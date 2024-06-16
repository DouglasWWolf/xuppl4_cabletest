
//================================================================================================
//    Date      Vers   Who  Changes
// -----------------------------------------------------------------------------------------------
// 06-Dec-2023  1.0.0  DWW  Initial creation
//
// 05-May-2024  1.1.0  DWW  Added revision tracking
//
// 28-May-2024  1.2.0  DWW  Updated to latest cmac_control in order to be able to configure
//                          pre-emphasis on the CMAC serdes.
//
// 08-Jun-2024  1.3.0  DWW  Added run-time control over RS-FEC and the pre-emphasis setting
//
// 15-Jun-2024  1.4.0  DWW  Now controlling CMAC gt_txdiffctrl
//
// 16-Jun-2024  1.5.0  DWW  Added programmable gt_txpostcursor and gt_txdiffctrl
//================================================================================================
localparam VERSION_MAJOR = 1;
localparam VERSION_MINOR = 5;
localparam VERSION_BUILD = 0;
localparam VERSION_RCAND = 0;

localparam VERSION_DAY   = 16;
localparam VERSION_MONTH = 6;
localparam VERSION_YEAR  = 2024;

localparam RTL_TYPE      = 741776;
localparam RTL_SUBTYPE   = 0;
