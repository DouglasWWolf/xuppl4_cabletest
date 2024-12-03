#==============================================================================
#  Date       Vers  Who  Description
# -----------------------------------------------------------------------------
# 06-Dec-23  1.0.0  DWW  Initial Creation
# 28-Feb-24  1.2.0  DWW  Now assuming the existence of /opt/fpga_runtime
# 08-Jun-24  1.3.0  DWW  Added commands "reset", "rsfec" and "txpre"
# 16-Jun-24  1.5.0  DWW  Added command "txpost" and "txpre"
#==============================================================================
CABLETEST_API_VERSION=1.5.0


#==============================================================================
# AXI register definitions
#==============================================================================
CABLETEST_BASE=0x1000
       REG_MODULE_REV=$((CABLETEST_BASE +  0*4))
           REG_STATUS=$((CABLETEST_BASE +  1*4))
REG_CYCLES_PER_PACKET=$((CABLETEST_BASE +  2*4))
    REG_PACKET_COUNTH=$((CABLETEST_BASE +  3*4))
    REG_PACKET_COUNTL=$((CABLETEST_BASE +  4*4))
   REG_PACKETS_SENT1H=$((CABLETEST_BASE +  5*4))
   REG_PACKETS_SENT1L=$((CABLETEST_BASE +  6*4))
   REG_PACKETS_SENT2H=$((CABLETEST_BASE +  7*4))
   REG_PACKETS_SENT2L=$((CABLETEST_BASE +  8*4))
   REG_PACKETS_RCVD1H=$((CABLETEST_BASE +  9*4))
   REG_PACKETS_RCVD1L=$((CABLETEST_BASE + 10*4))
   REG_PACKETS_RCVD2H=$((CABLETEST_BASE + 11*4))
   REG_PACKETS_RCVD2L=$((CABLETEST_BASE + 12*4))
          REG_ERRORS1=$((CABLETEST_BASE + 13*4))
          REG_ERRORS2=$((CABLETEST_BASE + 14*4))
          REG_CONTROL=$((CABLETEST_BASE + 15*4))
       REG_ETH_STATUS=$((CABLETEST_BASE + 16*4))
   REG_BYTES_PER_USEC=$((CABLETEST_BASE + 17*4))
            REG_RESET=$((CABLETEST_BASE + 18*4))
            REG_RSFEC=$((CABLETEST_BASE + 19*4))
            REG_TXPRE=$((CABLETEST_BASE + 20*4))
           REG_TXPOST=$((CABLETEST_BASE + 21*4))
           REG_TXDIFF=$((CABLETEST_BASE + 22*4))


#==============================================================================
# This reads a PCI register and displays its value in decimal
#==============================================================================
read_reg()
{
    pcireg -dec $1
}
#==============================================================================



#==============================================================================
# reads a 64-bit register
#==============================================================================
read_reg64()
{
    pcireg -wide -dec $1
}
#==============================================================================


#==============================================================================
# Displays the version of the RTL bitstream
#==============================================================================
get_rtl_version()
{
    local major=$(read_reg 0)
    local minor=$(read_reg 4)
    local revis=$(read_reg 8)
    echo ${major}.${minor}.${revis}
}
#==============================================================================

#==============================================================================
# Displays 1 if bitstream is loaded, otherwise displays "0"
#==============================================================================
is_bitstream_loaded()
{
    reg=$(read_reg $REG_MODULE_REV)
    test $reg -ne $((0xFFFFFFFF)) && echo "1" || echo "0"
}
#==============================================================================



#==============================================================================
# Displays the "busy" status.  Non-zero = Busy generating packets
#==============================================================================
is_busy()
{
    local status=$(read_reg $REG_STATUS)
    echo $((status & 3))
}
#==============================================================================


#==============================================================================
# This resets all of the packet-producing and receiving logic
#==============================================================================
reset()
{
    pcireg $REG_RESET 1
    while [ $(read_reg $REG_RESET) -ne 0 ]; do
        sleep .01
    done

    # Ensure everything has had time to come out of reset 
    sleep .01
}
#==============================================================================


#==============================================================================
# Enables or disables RS-FEC on the Ethernert CMAC modules
#==============================================================================
rsfec()
{
    local value=$1
    if [ "$value" == "" ]; then
        read_reg $REG_RSFEC
        return
    fi

    # Convert "on" and "off" to 1 and 0 respectively
    test $value == "on"  && value=1
    test $value == "off" && value=0

    # Change the RSFEC setting
    pcireg $REG_RSFEC $value

    # Reset the system to allow the new setting to take effect
    reset
}
#==============================================================================



#==============================================================================
# This sets the pre-emphasis value for the CMAC TX path.
#
# Valid values are 0 thru 31
#==============================================================================
txpre()
{    
    local value=$1

    # Does the user just want to print out the value?
    if [ "$value" == "" ]; then
        read_reg $REG_TXPRE
        return
    fi

    # Ensure the value provided by the user is between 0 and 31
    if [ $((value)) -lt 0 ] || [ $((value)) -gt 31 ]; then
        echo "Invalid value [$value] on txpre" 1>&2
        return
    fi

    # Change the TXPRE setting
    pcireg $REG_TXPRE $value

    # Reset the system to allow the new setting to take effect
    reset
}
#==============================================================================


#==============================================================================
# This sets the post-emphasis value for the CMAC TX path.
#
# Valid values are 0 thru 31
#==============================================================================
txpost()
{    
    local value=$1

    # Does the user just want to print out the value?
    if [ "$value" == "" ]; then
        read_reg $REG_TXPOST
        return
    fi

    # Ensure the value provided by the user is between 0 and 31
    if [ $((value)) -lt 0 ] || [ $((value)) -gt 31 ]; then
        echo "Invalid value [$value] on txpost" 1>&2
        return
    fi

    # Change the TXPOST setting
    pcireg $REG_TXPOST $value

    # Reset the system to allow the new setting to take effect
    reset
}
#==============================================================================



#==============================================================================
# This sets the differential voltage swing for the CMAC TX path.
#
# Valid values are 0 thru 31
#==============================================================================
txdiff()
{    
    local value=$1

    # Does the user just want to print out the value?
    if [ "$value" == "" ]; then
        read_reg $REG_TXDIFF
        return
    fi

    # Ensure the value provided by the user is between 0 and 31
    if [ $((value)) -lt 0 ] || [ $((value)) -gt 31 ]; then
        echo "Invalid value [$value] on txdiff" 1>&2
        return
    fi

    # Change the TXDIFF setting
    pcireg $REG_TXDIFF $value

    # Reset the system to allow the new setting to take effect
    reset
}
#==============================================================================








#==============================================================================
# Displays the "halted" status.  Non-zero = Packet generation was halted
#==============================================================================
is_halted()
{
    local status=$(read_reg $REG_STATUS)
    echo $(((status >> 2) & 3))
}
#==============================================================================



#==============================================================================
# Starts generating the specified number of packets
#
# Returns: 0 on success, 1 on failure
#==============================================================================
start()
{
    local packet_count=$1

    if [ $(is_busy) -ne -0 ]; then
        echo "Generator is busy." 1>&2
        return 1
    elif [ -z $packet_count ]; then
        echo "Missing parameter on start()" 1>&2
        return 1
    else
        pcireg -wide $REG_PACKET_COUNTH $packet_count
    fi

    return 0
}
#==============================================================================


#==============================================================================
# Displays the number of packets transmitted so far
#==============================================================================
get_packets_sent()
{
   
    if [ "$1" == "1" ]; then
        read_reg64 $REG_PACKETS_SENT1H
    elif [ "$1" == "2" ]; then
        read_reg64 $REG_PACKETS_SENT2H
    else
        echo "Bad parameter [$1] on get_packet_sent()" 1>&2
        echo "0"
        return
    fi
}
#==============================================================================


#==============================================================================
# Displays the total number of packets that will be sent
#==============================================================================
get_packet_count()
{
    read_reg64 $REG_PACKET_COUNTH 
}
#==============================================================================


#==============================================================================
# Displays the number of packets received
#
# $1 should be 1, 2, or blank
#==============================================================================
get_packets_rcvd()
{
    local rcvd1=$(read_reg64 $REG_PACKETS_RCVD1H)
    local rcvd2=$(read_reg64 $REG_PACKETS_RCVD2H)

    if [ "$1" == "1" ]; then
        echo $rcvd1
    elif [ "$1" == "2" ]; then
        echo $rcvd2
    else
        test $rcvd1 -lt $rcvd2 && echo $rcvd1 || echo $rcvd2
    fi
}
#==============================================================================


#==============================================================================
# Displays the number of cycles per packet
#==============================================================================
get_cycles_per_packet()
{
    read_reg $REG_CYCLES_PER_PACKET
}
#==============================================================================


#==============================================================================
# Sets the number of cycles per packet
#
# $1 should be in the range of 1 thru 129.
#==============================================================================
set_cycles_per_packet()
{
    local cycles=$1

    # Ensure that the caller gave us a parameter
    if [ "$cycles" == "" ]; then
        echo "Missing parameter on set_cycles_per_packet()" 1>&2
        return
    fi    

    # Ensure that the user is trying to set a valid value    
    if [ $cycles -lt 1 ] || [ $cycles -gt 129 ]; then
        echo "Invalid cycle count on set_cycles_per_packet()" 1>&2
        return
    fi

    # Is the packet-generator already busy?
    if [ $(is_busy) -ne 0 ]; then
        echo "Packet generator is busy" 1>&2
        return
    fi

    # The packet generator isn't busy: store the cycle count
    pcireg $REG_CYCLES_PER_PACKET $cycles
}
#==============================================================================


#==============================================================================
# Displays the number of data-mismatches detected
#==============================================================================
get_errors()
{
    if [ "$1" == "1" ]; then
        read_reg $REG_ERRORS1
    elif [ "$1" == "2" ]; then
        read_reg $REG_ERRORS2
    else
        echo "Bad parameter [$1] on get_errors()" 1>&2
        echo "0"
        return
    fi
}
#==============================================================================


#==============================================================================
# Causes the generator to inject an error
#==============================================================================
inject()
{
    local channel=$1
    if [ "$channel" == "1" ]; then
        pcireg $REG_CONTROL 1
    elif [ "$channel" == "2" ]; then
        pcireg $REG_CONTROL 2
    else
        echo "Invalid channel number on inject()" 1>&2
    fi
}
#==============================================================================


#==============================================================================
# Tell the generator to stop sending packets
#==============================================================================
stop()
{
    # Tell both channels to halt
    pcireg $REG_CONTROL 4 

    # This waits for the halt command to take effect
    while [ $(is_busy) -ne 0 ]; do
        sleep .1
    done
}
#==============================================================================



#==============================================================================
# Displays the PCS-lock status of an Ethernet port
#
# $1 = 0, 1 or blank (blank = both)
#
# Displays "1" if the selected Ethernet port has PCS-lock, else displays 0
#==============================================================================
get_pcs_status()
{
    local eth0_pcs_lock=0
    local eth1_pcs_lock=0

    # Fetch the ethernet status bits
    local status=$(read_reg $REG_ETH_STATUS)

    # Fetch the PCS lock status of the two ports
    test $((status & 0x00001)) -ne 0 && eth0_pcs_lock=1
    test $((status & 0x10000)) -ne 0 && eth1_pcs_lock=1

    # Display the requested status
    if [ "$1" == "0" ]; then
        echo $eth0_pcs_lock
    elif [ "$1" == "1" ]; then
        echo $eth1_pcs_lock
    else
        echo $((eth0_pcs_lock & eth1_pcs_lock))
    fi
}
#==============================================================================





