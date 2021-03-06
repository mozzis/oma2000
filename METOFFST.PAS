PROGRAM ReadMethodFields;
VAR
   FILE_TYPE_OFFSET : LONG_INTEGER;
   FILE_TYPE_TYPE : BYTE;
   STRUCTURE_VER_OFFSET : LONG_INTEGER;
   STRUCTURE_VER_TYPE : BYTE;
   LENGTH_OFFSET : LONG_INTEGER;
   LENGTH_TYPE : BYTE;
   USER_OFFSET : LONG_INTEGER;
   USER_TYPE : BYTE;
   DESCRIPTION_OFFSET : LONG_INTEGER;
   DESCRIPTION_TYPE : BYTE;
   FILE_CURVE_NUM_OFFSET : LONG_INTEGER;
   FILE_CURVE_NUM_TYPE : BYTE;
   INTERFACE_TYPE_OFFSET : LONG_INTEGER;
   INTERFACE_TYPE_TYPE : BYTE;
   ACTIVE_DETECTOR_OFFSET : LONG_INTEGER;
   ACTIVE_DETECTOR_TYPE : BYTE;
   DAD_NAME_OFFSET : LONG_INTEGER;
   DAD_NAME_TYPE : BYTE;
   NORMALIZE_OFFSET : LONG_INTEGER;
   NORMALIZE_TYPE : BYTE;
   SPECTROGRAPH_UNITS_OFFSET : LONG_INTEGER;
   SPECTROGRAPH_UNITS_TYPE : BYTE;
   EXCITATION_OFFSET : LONG_INTEGER;
   EXCITATION_TYPE : BYTE;
   SPECTROGRAPH_SET1_OFFSET : LONG_INTEGER;
   SPECTROGRAPH_SET2_OFFSET : LONG_INTEGER;
   SPECTROGRAPH_SET3_OFFSET : LONG_INTEGER;
   SPECTROGRAPH_SET4_OFFSET : LONG_INTEGER;
   SPECTROGRAPH_SET_TYPE : BYTE;
   SPECTROGRAPH_INC1_OFFSET : LONG_INTEGER;
   SPECTROGRAPH_INC2_OFFSET : LONG_INTEGER;
   SPECTROGRAPH_INC3_OFFSET : LONG_INTEGER;
   SPECTROGRAPH_INC4_OFFSET : LONG_INTEGER;
   SPECTROGRAPH_INC_TYPE : BYTE;

   SLIT1_OFFSET : LONG_INTEGER;
   SLIT2_OFFSET : LONG_INTEGER;
   SLIT3_OFFSET : LONG_INTEGER;
   SLIT4_OFFSET : LONG_INTEGER;
   SLIT5_OFFSET : LONG_INTEGER;
   SLIT6_OFFSET : LONG_INTEGER;
   SLIT7_OFFSET : LONG_INTEGER;
   SLIT8_OFFSET : LONG_INTEGER;
   SLIT9_OFFSET : LONG_INTEGER;
   SLIT10_OFFSET : LONG_INTEGER;
   SLIT11_OFFSET : LONG_INTEGER;
   SLIT12_OFFSET : LONG_INTEGER;
   SLIT13_OFFSET : LONG_INTEGER;
   SLIT14_OFFSET : LONG_INTEGER;
   SLIT15_OFFSET : LONG_INTEGER;
   SLIT16_OFFSET : LONG_INTEGER;
   SLIT_TYPE : BYTE;

   XCALIB1_OFFSET : LONG_INTEGER;
   XCALIB2_OFFSET : LONG_INTEGER;
   XCALIB3_OFFSET : LONG_INTEGER;
   XCALIB4_OFFSET : LONG_INTEGER;
   YCALIB1_OFFSET : LONG_INTEGER;
   YCALIB2_OFFSET : LONG_INTEGER;
   YCALIB3_OFFSET : LONG_INTEGER;
   YCALIB4_OFFSET : LONG_INTEGER;
   ZCALIB1_OFFSET : LONG_INTEGER;
   ZCALIB2_OFFSET : LONG_INTEGER;
   ZCALIB3_OFFSET : LONG_INTEGER;
   ZCALIB4_OFFSET : LONG_INTEGER;
   CALIB_TYPE : REAL;
   XCALIB_UNITS_OFFSET : LONG_INTEGER;
   YCALIB_UNITS_OFFSET : LONG_INTEGER;
   ZCALIB_UNITS_OFFSET : LONG_INTEGER;
   CALIB_UNITS_TYPE : BYTE;

   BACKGROUND_NAME_OFFSET : LONG_INTEGER;
   BACKGROUND_NAME_TYPE : BYTE;
   I0_NAME_OFFSET : LONG_INTEGER;
   I0_NAME_TYPE : BYTE;
   INPUT_NAME_OFFSET : LONG_INTEGER;
   INPUT_NAME_TYPE : BYTE;
   OUTPUT_NAME_OFFSET : LONG_INTEGER;
   OUTPUT_NAME_TYPE : BYTE;
   YT_INTERVAL_OFFSET : LONG_INTEGER;
   YT_INTERVAL_TYPE : BYTE;
   YT_PREDELAY_OFFSET : LONG_INTEGER;
   YT_PREDELAY_TYPE : BYTE;
   PIA1_OFFSET : LONG_INTEGER;
   PIA2_OFFSET : LONG_INTEGER;
   PIA_TYPE : BYTE;
   SOFTWARE_VER_OFFSET : LONG_INTEGER;
   SOFTWARE_VER_TYPE : BYTE;

   PLOT_WIN_INDEX_OFFSET : LONG_INTEGER;
   PLOT_WIN_INDEX_TYPE : BYTE;
   ACTIVE_PLOT_SETUP_OFFSET : LONG_INTEGER;
   ACTIVE_PLOT_SETUP_TYPE : BYTE;
   AUTOSCALE_X_OFFSET : LONG_INTEGER;
   AUTOSCALE_Y_OFFSET : LONG_INTEGER;
   AUTOSCALE_Z_OFFSET : LONG_INTEGER;
   AUTOSCALE_TYPE : BYTE;
   WINDOW1_PLOT_SETUP_OFFSET : LONG_INTEGER;
   WINDOW2_PLOT_SETUP_OFFSET : LONG_INTEGER;
   WINDOW3_PLOT_SETUP_OFFSET : LONG_INTEGER;
   WINDOW4_PLOT_SETUP_OFFSET : LONG_INTEGER;
   WINDOW5_PLOT_SETUP_OFFSET : LONG_INTEGER;
   WINDOW6_PLOT_SETUP_OFFSET : LONG_INTEGER;
   WINDOW7_PLOT_SETUP_OFFSET : LONG_INTEGER;
   WINDOW8_PLOT_SETUP_OFFSET : LONG_INTEGER;
   WINDOW_PLOT_SETUP_TYPE : BYTE;

   { Plot setup structure offsets  }
   PLOT1_SETUP_OFFSET : LONG_INTEGER;
   PLOT2_SETUP_OFFSET : LONG_INTEGER;
   PLOT3_SETUP_OFFSET : LONG_INTEGER;
   PLOT4_SETUP_OFFSET : LONG_INTEGER;
   PLOT5_SETUP_OFFSET : LONG_INTEGER;
   PLOT6_SETUP_OFFSET : LONG_INTEGER;
   PLOT7_SETUP_OFFSET : LONG_INTEGER;
   PLOT8_SETUP_OFFSET : LONG_INTEGER;

   { field offsets for plot setups.  Add to PLOT?_SETUP_OFFSET for   }
   { total offset.   }
   TITLE_OFFSET : LONG_INTEGER;
   TITLE_TYPE : BYTE;
   XLEGEND_OFFSET : LONG_INTEGER;
   YLEGEND_OFFSET : LONG_INTEGER;
   ZLEGEND_OFFSET : LONG_INTEGER;
   LEGEND_TYPE : BYTE;
   XMAX_OFFSET : LONG_INTEGER;
   XMIN_OFFSET : LONG_INTEGER;
   YMAX_OFFSET : LONG_INTEGER;
   YMIN_OFFSET : LONG_INTEGER;
   ZMAX_OFFSET : LONG_INTEGER;
   ZMIN_OFFSET : LONG_INTEGER;
   MIN_MAX_TYPE : BYTE;
   XASCENDING_OFFSET : LONG_INTEGER;
   YASCENDING_OFFSET : LONG_INTEGER;
   ZASCENDING_OFFSET : LONG_INTEGER;
   ASCENDING_TYPE : BYTE;
   X_PLOT_UNITS_OFFSET : LONG_INTEGER;
   Y_PLOT_UNITS_OFFSET : LONG_INTEGER;
   Z_PLOT_UNITS_OFFSET : LONG_INTEGER;
   PLOT_UNITS_TYPE : BYTE;
   XZ_PERCENT_OFFSET : LONG_INTEGER;
   YZ_PERCENT_OFFSET : LONG_INTEGER;
   Z_PERCENT_TYPE : BYTE;
   Z_POSITION_OFFSET : LONG_INTEGER;
   Z_POSITION_TYPE : BYTE;
   STYLE_OFFSET : LONG_INTEGER;
   STYLE_TYPE : BYTE;
   PEAK_LABELS_OFFSET : LONG_INTEGER;
   PEAK_LABELS_TYPE : BYTE;

   RESERVED_OFFSET : LONG_INTEGER;
   RESERVED_TYPE : BYTE;

   DET_NUMBER_OFFSET : LONG_INTEGER;
   DET_NUMBER_TYPE : BYTE;

   { This is the offset for the first detector structure.  Since each }
   { detector will take up a variable space the offset of succeeding }
   { detectors must be calculated baseg on the length field of each }
   { detector.   }
   DET1_OFFSET : LONG_INTEGER;

   { these are the offsets for the parameters for each detector.  Add to }
   { the detector offset for the actual value   }
   DET_LENGTH_OFFSET : LONG_INTEGER;
   DET_LENGTH_TYPE : BYTE;
   ROM_VERSION_OFFSET : LONG_INTEGER;
   ROM_VERSION_TYPE : BYTE;
   DA_MODE_OFFSET : LONG_INTEGER;
   DA_MODE_TYPE : BYTE;
   ADDR_OFFSET : LONG_INTEGER;
   ADDR_TYPE : BYTE;
   DATA_WORD_SIZE_OFFSET : LONG_INTEGER;
   DATA_WORD_SIZE_TYPE : BYTE;
   SCANS_OFFSET : LONG_INTEGER;
   SCANS_TYPE : BYTE;
   MEMORIES_OFFSET : LONG_INTEGER;
   MEMORIES_TYPE : BYTE;
   IGNORED_OFFSET : LONG_INTEGER;
   IGNORED_TYPE : BYTE;
   PREP_FRAMES_OFFSET : LONG_INTEGER;
   PREP_FRAMES_TYPE : BYTE;
   DETECTOR_TEMP_OFFSET : LONG_INTEGER;
   DETECTOR_TEMP_TYPE : BYTE;
   COOLER_LOCKED_OFFSET : LONG_INTEGER;
   COOLER_LOCKED_TYPE : BYTE;
   DETECTOR_TYPE_OFFSET : LONG_INTEGER;
   DETECTOR_TYPE_TYPE_TYPE : BYTE;
   DETECTOR_SPEED_OFFSET : LONG_INTEGER;
   DETECTOR_SPEED_TYPE : BYTE;
   LINE_FREQ_OFFSET : LONG_INTEGER;
   LINE_FREQ_TYPE : BYTE;
   SOURCE_COMP_OFFSET : LONG_INTEGER;
   SOURCE_COMP_TYPE : BYTE;
   SYNC_OFFSET : LONG_INTEGER;
   SYNC_TYPE : BYTE;
   EXTERN_START_OFFSET : LONG_INTEGER;
   EXTERN_START_TYPE : BYTE;
   TRIG_ON_OFFSET : LONG_INTEGER;
   TRIG_ON_TYPE : BYTE;
   TRIG_POL_OFFSET : LONG_INTEGER;
   TRIG_POL_TYPE : BYTE;
   TRIG_START_PIX_OFFSET : LONG_INTEGER;
   TRIG_START_PIX_TYPE : BYTE;
   TRIG_PIX_LEN_OFFSET : LONG_INTEGER;
   TRIG_PIX_LEN_TYPE : BYTE;
   SHUTTER_OPEN_SYNC_OFFSET : LONG_INTEGER;
   SHUTTER_OPEN_SYNC_TYPE : BYTE;
   SHUTTER_CLOSE_SYNC_OFFSET : LONG_INTEGER;
   SHUTTER_CLOSE_SYNC_TYPE : BYTE;
   SHUTTER_FORCED_OFFSET : LONG_INTEGER;
   SHUTTER_FORCED_TYPE : BYTE;
   NEED_EXPOSE_OFFSET : LONG_INTEGER;
   NEED_EXPOSE_TYPE : BYTE;
   EXP_TIME_OFFSET : LONG_INTEGER;
   EXP_TIME_TYPE : BYTE;
   MIN_EXP_TIME_OFFSET : LONG_INTEGER;
   MIN_EXP_TIME_TYPE : BYTE;
   PIX_TIME_OFFSET : LONG_INTEGER;
   PIX_TIME_TYPE : BYTE;
   NOP_TIME_OFFSET : LONG_INTEGER;
   NOP_TIME_TYPE : BYTE;
   PULSER_OFFSET : LONG_INTEGER;
   PULSER_TYPE : BYTE;
   PULSER_DELAY_OFFSET : LONG_INTEGER;
   PULSER_DELAY_TYPE : BYTE;
   PULSER_WIDTH_OFFSET : LONG_INTEGER;
   PULSER_WIDTH_TYPE : BYTE;
   PULSER_ENABLED_OFFSET : LONG_INTEGER;
   PULSER_ENABLED_TYPE : BYTE;
   PULSER_ONESHOT_OFFSET : LONG_INTEGER;
   PULSER_ONESHOT_TYPE : BYTE;
   PULSER_FREERUN_OFFSET : LONG_INTEGER;
   PULSER_FREERUN_TYPE : BYTE;
   PREDELAY_CLOCK_OFFSET : LONG_INTEGER;
   PREDELAY_CLOCK_TYPE : BYTE;
   PULSER_DEL_INC_OFFSET : LONG_INTEGER;
   PULSER_DEL_INC_TYPE : BYTE;
   PULSER_WID_INC_OFFSET : LONG_INTEGER;
   PULSER_WID_INC_TYPE : BYTE;
   TRACKS_OFFSET : LONG_INTEGER;
   TRACKS_TYPE : BYTE;
   NUMBER_PTS_OFFSET : LONG_INTEGER;
   NUMBER_PTS_TYPE : BYTE;
   X0_OFFSET : LONG_INTEGER;
   X0_TYPE : BYTE;
   Y0_OFFSET : LONG_INTEGER;
   Y0_TYPE : BYTE;
   ACTIVEX_OFFSET : LONG_INTEGER;
   ACTIVEX_TYPE : BYTE;
   ACTIVEY_OFFSET : LONG_INTEGER;
   ACTIVEY_TYPE : BYTE;
   DELTAX_OFFSET : LONG_INTEGER;
   DELTAX_TYPE : BYTE;
   DELTAY_OFFSET : LONG_INTEGER;
   DELTAY_TYPE : BYTE;
   SKIPX_OFFSET : LONG_INTEGER;
   SKIPX_TYPE : BYTE;
   SKIPY_OFFSET : LONG_INTEGER;
   SKIPY_TYPE : BYTE;
   CURRENT_POINT_OFFSET : LONG_INTEGER;
   CURRENT_POINT_TYPE : BYTE;
   CURRENT_TRACK_OFFSET : LONG_INTEGER;
   CURRENT_TRACK_TYPE : BYTE;
   MEX_MEMORY_OFFSET : LONG_INTEGER;
   MAX_MEMORY_TYPE : BYTE;
   SLICE_MODE_OFFSET : LONG_INTEGER;
   SLICE_MODE_TYPE : BYTE;
   TRACK_MODE_OFFSET : LONG_INTEGER;
   TRACK_MODE_TYPE : BYTE;
   SHIFT_MODE_OFFSET : LONG_INTEGER;
   SHIFT_MODE_TYPE : BYTE;

   DA_ACTIVE_OFFSET : LONG_INTEGER;
   DA_ACTIVE_TYPE : BYTE;
   BACK_ACTIVE_OFFSET : LONG_INTEGER;
   BACK_ACTIVE_TYPE : BYTE;

   XPIXEL_GROUP_NUM_OFFSET : LONG_INTEGER;
   XPIXEL_GROUP_NUM_TYPE : BYTE;
   YPIXEL_GROUP_NUM_OFFSET : LONG_INTEGER;
   YPIXEL_GROUP_NUM_TYPE : BYTE;
   TRIGGER_GROUP_NUM_OFFSET : LONG_INTEGER;
   TRIGGER_GROUP_NUM_TYPE : BYTE;

   { the offset for the above groups will vary depending on the number of }
   { groups of the preceding type }
   XPIXEL_GROUP_OFFSET : LONG_INTEGER;
   XPIXEL_GROUP_TYPE : BYTE;
   {******************  End of detector info *****************************}
   { variables for use in generic reads }
   BYTE_TYPE : BYTE;
   INTEGER_TYPE : BYTE;
   WORD_TYPE : BYTE;
   LONG_TYPE : BYTE;
   SINGLE_TYPE : BYTE;
   REAL_TYPE : BYTE;



   { variables for this application }
   ExposureTime : SINGLE;
   DataFileHandle : FILE;

{end of variables }

PROCEDURE InitOffsetAndType;
BEGIN

   BYTE_TYPE := 0;
   INTEGER_TYPE := 1;
   WORD_TYPE := 2;
   LONG_TYPE := 3;
   SINGLE_TYPE := 4;
   REAL_TYPE := 5;

   FILE_TYPE_OFFSET := 0;
   FILE_TYPE_TYPE := BYTE_TYPE;
   STRUCTURE_VER_OFFSET := 40;
   STRUCTURE_VER_TYPE := BYTE_TYPE;
   LENGTH_OFFSET := 41;
   LENGTH_TYPE := WORD_TYPE;
   USER_OFFSET := 43;
   USER_TYPE := BYTE_TYPE;
   DESCRIPTION_OFFSET := 44;
   DESCRIPTION_TYPE := BYTE_TYPE;
   FILE_CURVE_NUM_OFFSET := 125;
   FILE_CURVE_NUM_TYPE := WORD_TYPE;
   INTERFACE_TYPE_OFFSET := 127;
   INTERFACE_TYPE_TYPE := BYTE_TYPE;
   ACTIVE_DETECTOR_OFFSET := 128;
   ACTIVE_DETECTOR_TYPE := BYTE_TYPE;
   DAD_NAME_OFFSET := 129;
   DAD_NAME_TYPE := BYTE_TYPE;
   NORMALIZE_OFFSET := 206;
   NORMALIZE_TYPE := BYTE_TYPE;
   SPECTROGRAPH_UNITS_OFFSET := 207;
   SPECTROGRAPH_UNITS_TYPE := BYTE_TYPE;
   EXCITATION_OFFSET := 208;
   EXCITATION_TYPE := SINGLE_TYPE;
   SPECTROGRAPH_SET1_OFFSET := 212;
   SPECTROGRAPH_SET2_OFFSET := 216;
   SPECTROGRAPH_SET3_OFFSET := 220;
   SPECTROGRAPH_SET4_OFFSET := 224;
   SPECTROGRAPH_SET_TYPE := SINGLE_TYPE;
   SPECTROGRAPH_INC1_OFFSET := 228;
   SPECTROGRAPH_INC2_OFFSET := 232;
   SPECTROGRAPH_INC3_OFFSET := 236;
   SPECTROGRAPH_INC4_OFFSET := 240;
   SPECTROGRAPH_INC_TYPE := SINGLE_TYPE;

   SLIT1_OFFSET := 244;
   SLIT2_OFFSET := 248;
   SLIT3_OFFSET := 252;
   SLIT4_OFFSET := 256;
   SLIT5_OFFSET := 260;
   SLIT6_OFFSET := 264; 
   SLIT7_OFFSET := 268;
   SLIT8_OFFSET := 272;
   SLIT9_OFFSET := 276;
   SLIT10_OFFSET := 280;
   SLIT11_OFFSET := 284;
   SLIT12_OFFSET := 288;
   SLIT13_OFFSET := 292;
   SLIT14_OFFSET := 296;
   SLIT15_OFFSET := 300;
   SLIT16_OFFSET := 304;
   SLIT_TYPE := SINGLE_TYPE;

   XCALIB1_OFFSET := 308;
   XCALIB2_OFFSET := 312;
   XCALIB3_OFFSET := 316;
   XCALIB4_OFFSET := 320;
   YCALIB1_OFFSET := 324;
   YCALIB2_OFFSET := 328;
   YCALIB3_OFFSET := 332;
   YCALIB4_OFFSET := 336;
   ZCALIB1_OFFSET := 340;
   ZCALIB2_OFFSET := 344;
   ZCALIB3_OFFSET := 348;
   ZCALIB4_OFFSET := 352;
   CALIB_TYPE := REAL_TYPE;
   XCALIB_UNITS_OFFSET := 356;
   YCALIB_UNITS_OFFSET := 357;
   ZCALIB_UNITS_OFFSET := 358;
   CALIB_UNITS_TYPE := BYTE_TYPE;

   BACKGROUND_NAME_OFFSET := 359;
   BACKGROUND_NAME_TYPE := BYTE_TYPE;
   I0_NAME_OFFSET := 436;
   I0_NAME_TYPE := BYTE_TYPE;
   INPUT_NAME_OFFSET := 513;
   INPUT_NAME_TYPE := BYTE_TYPE;
   OUTPUT_NAME_OFFSET := 590;
   OUTPUT_NAME_TYPE := BYTE_TYPE;
   YT_INTERVAL_OFFSET := 667;
   YT_INTERVAL_TYPE := SINGLE_TYPE;
   YT_PREDELAY_OFFSET := 671;
   YT_PREDELAY_TYPE := SINGLE_TYPE;
   PIA1_OFFSET := 675;
   PIA2_OFFSET := 677;
   PIA_TYPE := WORD_TYPE;
   SOFTWARE_VER_OFFSET := 679;
   SOFTWARE_VER_TYPE := WORD_TYPE;

   PLOT_WIN_INDEX_OFFSET := 681;
   PLOT_WIN_INDEX_TYPE := INTEGER_TYPE;
   ACTIVE_PLOT_SETUP_OFFSET := 683;
   ACTIVE_PLOT_SETUP_TYPE := INTEGER_TYPE;
   AUTOSCALE_X_OFFSET := 685;
   AUTOSCALE_Y_OFFSET := 687;
   AUTOSCALE_Z_OFFSET := 689;
   AUTOSCALE_TYPE := WORD_TYPE;
   WINDOW1_PLOT_SETUP_OFFSET := 691;
   WINDOW2_PLOT_SETUP_OFFSET := 693;
   WINDOW3_PLOT_SETUP_OFFSET := 695;
   WINDOW4_PLOT_SETUP_OFFSET := 697;
   WINDOW5_PLOT_SETUP_OFFSET := 699;
   WINDOW6_PLOT_SETUP_OFFSET := 701;
   WINDOW7_PLOT_SETUP_OFFSET := 703;
   WINDOW8_PLOT_SETUP_OFFSET := 705;
   WINDOW_PLOT_SETUP_TYPE := WORD_TYPE;

   { Plot setup structure offsets }
   PLOT1_SETUP_OFFSET := 707;
   PLOT2_SETUP_OFFSET := 873;
   PLOT3_SETUP_OFFSET := 1039;
   PLOT4_SETUP_OFFSET := 1205;
   PLOT5_SETUP_OFFSET := 1371;
   PLOT6_SETUP_OFFSET := 1537;
   PLOT7_SETUP_OFFSET := 1703;
   PLOT8_SETUP_OFFSET := 1869;

   { field offsets for plot setups.  Add to PLOT?_SETUP_OFFSET for }
   { total offset. }
   TITLE_OFFSET := 0;
   TITLE_TYPE := BYTE_TYPE;
   XLEGEND_OFFSET := 30;
   YLEGEND_OFFSET := 72;
   ZLEGEND_OFFSET := 114;
   LEGEND_TYPE := BYTE_TYPE;
   XMAX_OFFSET := 60;
   XMIN_OFFSET := 64;
   YMAX_OFFSET := 102;
   YMIN_OFFSET := 106;
   ZMAX_OFFSET := 144;
   ZMIN_OFFSET := 148;
   MIN_MAX_TYPE := SINGLE_TYPE;
   XASCENDING_OFFSET := 68;
   YASCENDING_OFFSET := 110;
   ZASCENDING_OFFSET := 152;
   ASCENDING_TYPE := WORD_TYPE;
   X_PLOT_UNITS_OFFSET := 70;
   Y_PLOT_UNITS_OFFSET := 112;
   Z_PLOT_UNITS_OFFSET := 154;
   PLOT_UNITS_TYPE := BYTE_TYPE;
   XZ_PERCENT_OFFSET := 156;
   YZ_PERCENT_OFFSET := 158;
   Z_PERCENT_TYPE := INTEGER_TYPE;
   Z_POSITION_OFFSET := 160;
   Z_POSITION_TYPE := INTEGER_TYPE;
   STYLE_OFFSET := 162;
   STYLE_TYPE := INTEGER_TYPE;
   PEAK_LABELS_OFFSET := 164;
   PEAK_LABELS_TYPE := WORD_TYPE;

   RESERVED_OFFSET := 2035;
   RESERVED_TYPE := BYTE_TYPE;

   DET_NUMBER_OFFSET := 2135;
   DET_NUMBER_TYPE := BYTE_TYPE;


   DET1_OFFSET := 2136;

   { these are the offsets for the parameters for each detector.  Add to }
   { the detector offset for the actual value   }
   DET_LENGTH_OFFSET := 0;
   DET_LENGTH_TYPE := WORD_TYPE;
   ROM_VERSION_OFFSET := 2;
   ROM_VERSION_TYPE := SINGLE_TYPE;
   DA_MODE_OFFSET := 6;
   DA_MODE_TYPE := INTEGER_TYPE;
   ADDR_OFFSET := 8;
   ADDR_TYPE := INTEGER_TYPE;
   DATA_WORD_SIZE_OFFSET := 10;
   DATA_WORD_SIZE_TYPE := INTEGER_TYPE;
   SCANS_OFFSET := 12;
   SCANS_TYPE := INTEGER_TYPE;
   MEMORIES_OFFSET := 14;
   MEMORIES_TYPE := INTEGER_TYPE;
   IGNORED_OFFSET := 16;
   IGNORED_TYPE := INTEGER_TYPE;
   PREP_FRAMES_OFFSET := 18;
   PREP_FRAMES_TYPE := INTEGER_TYPE;
   DETECTOR_TEMP_OFFSET := 20;
   DETECTOR_TEMP_TYPE := INTEGER_TYPE;
   COOLER_LOCKED_OFFSET := 22;
   COOLER_LOCKED_TYPE := INTEGER_TYPE;
   DETECTOR_TYPE_OFFSET := 24;
   DETECTOR_TYPE_TYPE_TYPE := INTEGER_TYPE;
   DETECTOR_SPEED_OFFSET := 36;
   DETECTOR_SPEED_TYPE := INTEGER_TYPE;
   LINE_FREQ_OFFSET := 38;
   LINE_FREQ_TYPE := INTEGER_TYPE;
   SOURCE_COMP_OFFSET := 30;
   SOURCE_COMP_TYPE := INTEGER_TYPE;
   SYNC_OFFSET := 32;
   SYNC_TYPE := INTEGER_TYPE;
   EXTERN_START_OFFSET := 34;
   EXTERN_START_TYPE := INTEGER_TYPE;
   TRIG_ON_OFFSET := 36;
   TRIG_ON_TYPE := INTEGER_TYPE;
   TRIG_POL_OFFSET := 38;
   TRIG_POL_TYPE := INTEGER_TYPE;
   TRIG_START_PIX_OFFSET := 40;
   TRIG_START_PIX_TYPE := INTEGER_TYPE;
   TRIG_PIX_LEN_OFFSET := 42;
   TRIG_PIX_LEN_TYPE := INTEGER_TYPE;
   SHUTTER_OPEN_SYNC_OFFSET := 44;
   SHUTTER_OPEN_SYNC_TYPE := INTEGER_TYPE;
   SHUTTER_CLOSE_SYNC_OFFSET := 46;
   SHUTTER_CLOSE_SYNC_TYPE := INTEGER_TYPE;
   SHUTTER_FORCED_OFFSET := 48;
   SHUTTER_FORCED_TYPE := INTEGER_TYPE;
   NEED_EXPOSE_OFFSET := 50;
   NEED_EXPOSE_TYPE := INTEGER_TYPE;
   EXP_TIME_OFFSET := 52;
   EXP_TIME_TYPE := SINGLE_TYPE;
   MIN_EXP_TIME_OFFSET := 56;
   MIN_EXP_TIME_TYPE := SINGLE_TYPE;
   PIX_TIME_OFFSET := 60;
   PIX_TIME_TYPE := INTEGER_TYPE;
   NOP_TIME_OFFSET := 62;
   NOP_TIME_TYPE := INTEGER_TYPE;
   PULSER_OFFSET := 64;
   PULSER_TYPE := INTEGER_TYPE;
   PULSER_DELAY_OFFSET := 66;
   PULSER_DELAY_TYPE := SINGLE_TYPE;
   PULSER_WIDTH_OFFSET := 70;
   PULSER_WIDTH_TYPE := SINGLE_TYPE;
   PULSER_ENABLED_OFFSET := 74;
   PULSER_ENABLED_TYPE := INTEGER_TYPE;
   PULSER_ONESHOT_OFFSET := 76;
   PULSER_ONESHOT_TYPE := INTEGER_TYPE;
   PULSER_FREERUN_OFFSET := 78;
   PULSER_FREERUN_TYPE := INTEGER_TYPE;
   PREDELAY_CLOCK_OFFSET := 80;
   PREDELAY_CLOCK_TYPE := INTEGER_TYPE;
   PULSER_DEL_INC_OFFSET := 82;
   PULSER_DEL_INC_TYPE := SINGLE_TYPE;
   PULSER_WID_INC_OFFSET := 86;
   PULSER_WID_INC_TYPE := SINGLE_TYPE;
   TRACKS_OFFSET := 90;
   TRACKS_TYPE := INTEGER_TYPE;
   NUMBER_PTS_OFFSET := 92;
   NUMBER_PTS_TYPE := INTEGER_TYPE;
   X0_OFFSET := 94;
   X0_TYPE := INTEGER_TYPE;
   Y0_OFFSET := 96;
   Y0_TYPE := INTEGER_TYPE;
   ACTIVEX_OFFSET := 98;
   ACTIVEX_TYPE := INTEGER_TYPE;
   ACTIVEY_OFFSET := 100;
   ACTIVEY_TYPE := INTEGER_TYPE;
   DELTAX_OFFSET := 102;
   DELTAX_TYPE := INTEGER_TYPE;
   DELTAY_OFFSET := 104;
   DELTAY_TYPE := INTEGER_TYPE;
   SKIPX_OFFSET := 106;
   SKIPX_TYPE := INTEGER_TYPE;
   SKIPY_OFFSET := 108;
   SKIPY_TYPE := INTEGER_TYPE;
   CURRENT_POINT_OFFSET := 110;
   CURRENT_POINT_TYPE := INTEGER_TYPE;
   CURRENT_TRACK_OFFSET := 112;
   CURRENT_TRACK_TYPE := INTEGER_TYPE;
   MEX_MEMORY_OFFSET := 114;
   MAX_MEMORY_TYPE := INTEGER_TYPE;
   SLICE_MODE_OFFSET := 116;
   SLICE_MODE_TYPE := INTEGER_TYPE;
   TRACK_MODE_OFFSET := 118;
   TRACK_MODE_TYPE := INTEGER_TYPE;
   SHIFT_MODE_OFFSET := 120;
   SHIFT_MODE_TYPE := INTEGER_TYPE;

   DA_ACTIVE_OFFSET := 122;
   DA_ACTIVE_TYPE := INTEGER_TYPE;
   BACK_ACTIVE_OFFSET := 124;
   BACK_ACTIVE_TYPE := INTEGER_TYPE;

   XPIXEL_GROUP_NUM_OFFSET := 126;
   XPIXEL_GROUP_NUM_TYPE := INTEGER_TYPE;
   YPIXEL_GROUP_NUM_OFFSET := 128;
   YPIXEL_GROUP_NUM_TYPE := INTEGER_TYPE;
   TRIGGER_GROUP_NUM_OFFSET := 130;
   TRIGGER_GROUP_NUM_TYPE := INTEGER_TYPE;

   { the offset for the above groups will vary depending on the number of }
   { groups of the preceding type }
   XPIXEL_GROUP_OFFSET := 134;
   XPIXEL_GROUP_TYPE := INTEGER_TYPE;
   {******************  End of detector info *****************************}
END;

BEGIN
   writeln();
   buflen := 20;
   write('Initializing');
   InitOffsetAndType();
   writeln();
   assign( DataFileHandle, 'oma4000.met');
   reset( DataFileHandle );
   seek( DataFileHandle, EXP_TIME_OFFSET + DET1_OFFSET);
   read( DataFileHandle, ExposureTime );
   write( 'Exposure Time = ', ExposureTime );

END.
