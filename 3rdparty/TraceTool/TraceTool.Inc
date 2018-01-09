// unit TraceTool.inc ;
// used by viewer and client

// version 12.3

{$ifdef CLR}  // The common language runtime symbol is only defined for the .NET platform.
  {$define DELPHI.NET}
  {$ifdef VER160}
    {$define DELPHI.NET_1}
  {$endif VER160}

  // Compiler defines common to all .NET versions.
  {$ifdef DELPHI.NET_1}
    {$define DELHI.NET_1_UP}
  {$endif DELPHI.NET_1}
{$endif CLR}

{$ifdef Win32}

// Compiler defines not specific to a particlular platform.

  {$ifdef VER260}             // dephi XE5
    {$define COMPILER_19}
    {$define DELPHI}
    {$define DELPHI_19}
  {$endif VER260}

  {$ifdef VER250}             // dephi XE4
    {$define COMPILER_18}
    {$define DELPHI}
    {$define DELPHI_18}
  {$endif VER250}

  {$ifdef VER240}             // dephi XE3
    {$define COMPILER_17}
    {$define DELPHI}
    {$define DELPHI_17}
  {$endif VER240}

  {$ifdef VER230}               // delphi XE2
    {$define COMPILER_16}
    {$define DELPHI}
    {$define DELPHI_16}
  {$endif VER230}

  {$ifdef VER220}                 // delphi XE
    {$define COMPILER_15}
    {$define DELPHI}
    {$define DELPHI_15}
  {$endif VER220}

  {$ifdef VER210}                 // delphi 2010
    {$define COMPILER_14}
    {$define DELPHI}
    {$define DELPHI_14}
  {$endif VER210}

  {$ifdef VER200}  					 // delphi 2009
    {$define COMPILER_13}
    {$define DELPHI}
    {$define DELPHI_13}
  {$endif VER200}

  {$ifdef VER190}                 // delphi 2008
    {$define COMPILER_12}
    {$define DELPHI}
    {$define DELPHI_12}
  {$endif VER190}

  {$ifdef VER180}                 // delphi 2006
    {$define COMPILER_10}
    {$define DELPHI}
    {$define DELPHI_10}
  {$endif VER180}


  {$ifdef VER170}
    {$define COMPILER_9}
    {$define DELPHI}
    {$define DELPHI_9}
  {$endif VER170}
  
  {$ifdef VER160}
    {$define COMPILER_8}
    {$define DELPHI}
    {$define DELPHI_8}
  {$endif VER160}

  {$ifdef VER150}
    {$define COMPILER_7}
    {$define DELPHI}
    {$define DELPHI_7}
  {$endif}

  {$ifdef VER140}
    {$define COMPILER_6}
    {$ifdef BCB}
      {$define CPPB}
      {$define CPPB_6}
    {$else}
      {$define DELPHI}
      {$define DELPHI_6}
    {$endif}
  {$endif}

  {$ifdef VER130}
    {$define COMPILER_5}
    {$ifdef BCB}
      {$define CPPB}
      {$define CPPB_5}
    {$else}
      {$define DELPHI}
      {$define DELPHI_5}
    {$endif}
  {$endif}

  {$ifdef VER125}
    {$define COMPILER_4}
    {$define CPPB}
    {$define CPPB_4}
  {$endif}

  {$ifdef VER120}
    {$define COMPILER_4}
    {$define DELPHI}
    {$define DELPHI_4}
  {$endif}

  {$ifdef VER110}
    {$define COMPILER_3}
    {$define CPPB}
    {$define CPPB_3}
  {$endif}

  {$ifdef VER100}
    {$define COMPILER_3}
    {$define DELPHI}
    {$define DELPHI_3}
  {$endif}

  {$ifdef VER93}
    {$define COMPILER_2} // C++ Builder v1 compiler is really v2
    {$define CPPB}
    {$define CPPB_1}
  {$endif}

  {$ifdef VER90}
    {$define COMPILER_2}
    {$define DELPHI}
    {$define DELPHI_2}
  {$endif}

  {$ifdef VER80}
    {$define COMPILER_1}
    {$define DELPHI}
    {$define DELPHI_1}
  {$endif}

  {$ifdef DELPHI_2}
    {$define DELPHI_2_UP}
  {$endif}

  {$ifdef DELPHI_3}
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
  {$endif}

  {$ifdef DELPHI_4}
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
    {$define DELPHI_4_UP}
  {$endif}

  {$ifdef DELPHI_5}
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
    {$define DELPHI_4_UP}
    {$define DELPHI_5_UP}
  {$endif}

  {$ifdef DELPHI_6}
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
    {$define DELPHI_4_UP}
    {$define DELPHI_5_UP}
    {$define DELPHI_6_UP}
  {$endif}

  {$ifdef DELPHI_7}
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
    {$define DELPHI_4_UP}
    {$define DELPHI_5_UP}
    {$define DELPHI_6_UP}
    {$define DELPHI_7_UP}
  {$endif}

  {$ifdef DELPHI_8}
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
    {$define DELPHI_4_UP}
    {$define DELPHI_5_UP}
    {$define DELPHI_6_UP}
    {$define DELPHI_7_UP}
    {$define DELPHI_8_UP}
  {$endif}

  {$ifdef DELPHI_9}
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
    {$define DELPHI_4_UP}
    {$define DELPHI_5_UP}
    {$define DELPHI_6_UP}
    {$define DELPHI_7_UP}
    {$define DELPHI_8_UP}
    {$define DELPHI_9_UP}
  {$endif}

  {$ifdef DELPHI_10}
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
    {$define DELPHI_4_UP}
    {$define DELPHI_5_UP}
    {$define DELPHI_6_UP}
    {$define DELPHI_7_UP}
    {$define DELPHI_8_UP}
    {$define DELPHI_9_UP}
    {$define DELPHI_10_UP}
  {$endif}

  {$ifdef DELPHI_11}
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
    {$define DELPHI_4_UP}
    {$define DELPHI_5_UP}
    {$define DELPHI_6_UP}
    {$define DELPHI_7_UP}
    {$define DELPHI_8_UP}
    {$define DELPHI_9_UP}
    {$define DELPHI_10_UP}
    {$define DELPHI_11_UP}
  {$endif}

  {$ifdef DELPHI_12}         // delphi 2009
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
    {$define DELPHI_4_UP}
    {$define DELPHI_5_UP}
    {$define DELPHI_6_UP}
    {$define DELPHI_7_UP}
    {$define DELPHI_8_UP}
    {$define DELPHI_9_UP}
    {$define DELPHI_10_UP}
    {$define DELPHI_11_UP}
    {$define DELPHI_12_UP}
  {$endif}

  {$ifdef DELPHI_13}         // delphi 2010
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
    {$define DELPHI_4_UP}
    {$define DELPHI_5_UP}
    {$define DELPHI_6_UP}
    {$define DELPHI_7_UP}
    {$define DELPHI_8_UP}
    {$define DELPHI_9_UP}
    {$define DELPHI_10_UP}
    {$define DELPHI_11_UP}
    {$define DELPHI_12_UP}
    {$define DELPHI_13_UP}
  {$endif}


  {$ifdef DELPHI_14}         // delphi xe
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
    {$define DELPHI_4_UP}
    {$define DELPHI_5_UP}
    {$define DELPHI_6_UP}
    {$define DELPHI_7_UP}
    {$define DELPHI_8_UP}
    {$define DELPHI_9_UP}
    {$define DELPHI_10_UP}
    {$define DELPHI_11_UP}
    {$define DELPHI_12_UP}
    {$define DELPHI_13_UP}
    {$define DELPHI_14_UP}
  {$endif}

  {$ifdef DELPHI_15}         // delphi xe2
    {$define DELPHI_2_UP}
    {$define DELPHI_3_UP}
    {$define DELPHI_4_UP}
    {$define DELPHI_5_UP}
    {$define DELPHI_6_UP}
    {$define DELPHI_7_UP}
    {$define DELPHI_8_UP}
    {$define DELPHI_9_UP}
    {$define DELPHI_10_UP}
    {$define DELPHI_11_UP}
    {$define DELPHI_12_UP}
    {$define DELPHI_13_UP}
    {$define DELPHI_14_UP}
    {$define DELPHI_15_UP}
  {$endif}




  {$ifdef CPPB_3}
    {$define CPPB_3_UP}
  {$endif}

  {$ifdef CPPB_4}
    {$define CPPB_3_UP}
    {$define CPPB_4_UP}
  {$endif}

  {$ifdef CPPB_5}
    {$define CPPB_3_UP}
    {$define CPPB_4_UP}
    {$define CPPB_5_UP}
  {$endif}

  {$ifdef CPPB_6}
    {$define CPPB_3_UP}
    {$define CPPB_4_UP}
    {$define CPPB_5_UP}
    {$define CPPB_6_UP}
  {$endif}

  {$ifdef CPPB_3_UP}
    // C++ Builder requires this if you use Delphi components in run-time packages.
    {$ObjExportAll On}
  {$endif}

{$else (not Windows)}
  // Linux is the target
  {$define QT_CLX}

  {$define KYLIX}

  {$ifdef VER140}
    {$define COMPILER_6}
      {$ifdef conditionalexpressions}
        {$if Declared(RTLVersion) and (RTLVersion = 14)}
          {$define KYLIX_1}
        {$ifend}

        {$if Declared(RTLVersion) and (RTLVersion = 14.2)}
          {$define KYLIX_2}
        {$ifend}

        {$if Declared(RTLVersion) and (RTLVersion = 14.5)}
          {$define KYLIX_3}
        {$ifend}
      {$endif}
  {$endif}

  {$ifdef VER150}
    {$define COMPILER_7}
    {$define KYLIX_3}
  {$endif}

  {$ifdef VER140}
    {$define COMPILER_6}
    {$define KYLIX_2}
  {$endif}

  {$ifdef KYLIX_1}
    {$define KYLIX_1_UP}
  {$endif}

  {$ifdef KYLIX_2}
    {$define KYLIX_2_UP}
  {$endif}

  {$ifdef KYLIX_3}
    {$define KYLIX_2_UP}
    {$define KYLIX_3_UP}
  {$endif}

{$endif Win32}


{$ifdef COMPILER_1}
  {$define COMPILER_1_UP}
{$endif}

{$ifdef COMPILER_2}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
{$endif}

{$ifdef COMPILER_3}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
{$endif}

{$ifdef COMPILER_4}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
{$endif}

{$ifdef COMPILER_5}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
  {$define COMPILER_5_UP}
{$endif}

{$ifdef COMPILER_6}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
  {$define COMPILER_5_UP}
  {$define COMPILER_6_UP}
{$endif}

{$ifdef COMPILER_7}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
  {$define COMPILER_5_UP}
  {$define COMPILER_6_UP}
  {$define COMPILER_7_UP}
{$endif}

{$ifdef COMPILER_8}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
  {$define COMPILER_5_UP}
  {$define COMPILER_6_UP}
  {$define COMPILER_7_UP}
  {$define COMPILER_8_UP}
{$endif}

{$ifdef COMPILER_9}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
  {$define COMPILER_5_UP}
  {$define COMPILER_6_UP}
  {$define COMPILER_7_UP}
  {$define COMPILER_8_UP}
  {$define COMPILER_9_UP}
{$endif}

{$ifdef COMPILER_10}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
  {$define COMPILER_5_UP}
  {$define COMPILER_6_UP}
  {$define COMPILER_7_UP}
  {$define COMPILER_8_UP}
  {$define COMPILER_9_UP}
  {$define COMPILER_10_UP}
  // Backwards compatibility
  {$define DELPHI_2_UP}
  {$define DELPHI_3_UP}
  {$define DELPHI_4_UP}
  {$define DELPHI_5_UP}
  {$define DELPHI_6_UP}
  {$define DELPHI_7_UP}
  {$define DELPHI_8_UP}
  {$define DELPHI_9_UP}
  {$define DELPHI_10_UP}
  {$define CPPB_3_UP}
  {$define CPPB_4_UP}
  {$define CPPB_5_UP}
  {$define CPPB_6_UP}
{$endif}

{$ifdef COMPILER_11}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
  {$define COMPILER_5_UP}
  {$define COMPILER_6_UP}
  {$define COMPILER_7_UP}
  {$define COMPILER_8_UP}
  {$define COMPILER_9_UP}
  {$define COMPILER_10_UP}
  {$define COMPILER_11_UP}
  // Backwards compatibility
  {$define DELPHI_2_UP}
  {$define DELPHI_3_UP}
  {$define DELPHI_4_UP}
  {$define DELPHI_5_UP}
  {$define DELPHI_6_UP}
  {$define DELPHI_7_UP}
  {$define DELPHI_8_UP}
  {$define DELPHI_9_UP}
  {$define DELPHI_10_UP}
  {$define DELPHI_11_UP}
  {$define CPPB_3_UP}
  {$define CPPB_4_UP}
  {$define CPPB_5_UP}
  {$define CPPB_6_UP}

  {$ifdef BCB}
    {$define CPPB}
  {$else}
    {$define DELPHI}
  {$endif} 

{$endif}


{$ifdef COMPILER_12}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
  {$define COMPILER_5_UP}
  {$define COMPILER_6_UP}
  {$define COMPILER_7_UP}
  {$define COMPILER_8_UP}
  {$define COMPILER_9_UP}
  {$define COMPILER_10_UP}
  {$define COMPILER_11_UP}
  {$define COMPILER_12_UP}
  // Backwards compatibility
  {$define DELPHI_2_UP}
  {$define DELPHI_3_UP}
  {$define DELPHI_4_UP}
  {$define DELPHI_5_UP}
  {$define DELPHI_6_UP}
  {$define DELPHI_7_UP}
  {$define DELPHI_8_UP}
  {$define DELPHI_9_UP}
  {$define DELPHI_10_UP}
  {$define DELPHI_11_UP}
  {$define DELPHI_12_UP}
  {$define CPPB_3_UP}
  {$define CPPB_4_UP}
  {$define CPPB_5_UP}
  {$define CPPB_6_UP}

  {$ifdef BCB}
    {$define CPPB}
  {$else}
    {$define DELPHI}
  {$endif} 

{$endif}

{$ifdef COMPILER_13}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
  {$define COMPILER_5_UP}
  {$define COMPILER_6_UP}
  {$define COMPILER_7_UP}
  {$define COMPILER_8_UP}
  {$define COMPILER_9_UP}
  {$define COMPILER_10_UP}
  {$define COMPILER_11_UP}
  {$define COMPILER_12_UP}
  {$define COMPILER_13_UP}
  // Backwards compatibility
  {$define DELPHI_2_UP}
  {$define DELPHI_3_UP}
  {$define DELPHI_4_UP}
  {$define DELPHI_5_UP}
  {$define DELPHI_6_UP}
  {$define DELPHI_7_UP}
  {$define DELPHI_8_UP}
  {$define DELPHI_9_UP}
  {$define DELPHI_10_UP}
  {$define DELPHI_11_UP}
  {$define DELPHI_12_UP}
  {$define DELPHI_13_UP}
  {$define CPPB_3_UP}
  {$define CPPB_4_UP}
  {$define CPPB_5_UP}
  {$define CPPB_6_UP}

  {$ifdef BCB}
    {$define CPPB}
  {$else}
    {$define DELPHI}
  {$endif}

{$endif}

{$ifdef COMPILER_14}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
  {$define COMPILER_5_UP}
  {$define COMPILER_6_UP}
  {$define COMPILER_7_UP}
  {$define COMPILER_8_UP}
  {$define COMPILER_9_UP}
  {$define COMPILER_10_UP}
  {$define COMPILER_11_UP}
  {$define COMPILER_12_UP}
  {$define COMPILER_13_UP}
  {$define COMPILER_14_UP}
  // Backwards compatibility
  {$define DELPHI_2_UP}
  {$define DELPHI_3_UP}
  {$define DELPHI_4_UP}
  {$define DELPHI_5_UP}
  {$define DELPHI_6_UP}
  {$define DELPHI_7_UP}
  {$define DELPHI_8_UP}
  {$define DELPHI_9_UP}
  {$define DELPHI_10_UP}
  {$define DELPHI_11_UP}
  {$define DELPHI_12_UP}
  {$define DELPHI_13_UP}
  {$define DELPHI_14_UP}
  {$define CPPB_3_UP}
  {$define CPPB_4_UP}
  {$define CPPB_5_UP}
  {$define CPPB_6_UP}

  {$ifdef BCB}
    {$define CPPB}
  {$else}
    {$define DELPHI}
  {$endif}

{$endif}



{$ifdef COMPILER_15}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
  {$define COMPILER_5_UP}
  {$define COMPILER_6_UP}
  {$define COMPILER_7_UP}
  {$define COMPILER_8_UP}
  {$define COMPILER_9_UP}
  {$define COMPILER_10_UP}
  {$define COMPILER_11_UP}
  {$define COMPILER_12_UP}
  {$define COMPILER_13_UP}
  {$define COMPILER_14_UP}
  {$define COMPILER_15_UP}
  // Backwards compatibility
  {$define DELPHI_2_UP}
  {$define DELPHI_3_UP}
  {$define DELPHI_4_UP}
  {$define DELPHI_5_UP}
  {$define DELPHI_6_UP}
  {$define DELPHI_7_UP}
  {$define DELPHI_8_UP}
  {$define DELPHI_9_UP}
  {$define DELPHI_10_UP}
  {$define DELPHI_11_UP}
  {$define DELPHI_12_UP}
  {$define DELPHI_13_UP}
  {$define DELPHI_14_UP}
  {$define DELPHI_15_UP}
  {$define CPPB_3_UP}
  {$define CPPB_4_UP}
  {$define CPPB_5_UP}
  {$define CPPB_6_UP}

  {$ifdef BCB}
    {$define CPPB}
  {$else}
    {$define DELPHI}
  {$endif}

{$endif}


//----------------------------------------
{$ifdef COMPILER_19}
  {$define COMPILER_1_UP}
  {$define COMPILER_2_UP}
  {$define COMPILER_3_UP}
  {$define COMPILER_4_UP}
  {$define COMPILER_5_UP}
  {$define COMPILER_6_UP}
  {$define COMPILER_7_UP}
  {$define COMPILER_8_UP}
  {$define COMPILER_9_UP}
  {$define COMPILER_10_UP}
  {$define COMPILER_11_UP}
  {$define COMPILER_12_UP}
  {$define COMPILER_13_UP}
  {$define COMPILER_14_UP}
  {$define COMPILER_15_UP}
  {$define COMPILER_16_UP}
  {$define COMPILER_17_UP}
  {$define COMPILER_18_UP}
  {$define COMPILER_19_UP}
  // Backwards compatibility
  {$define DELPHI_2_UP}
  {$define DELPHI_3_UP}
  {$define DELPHI_4_UP}
  {$define DELPHI_5_UP}
  {$define DELPHI_6_UP}
  {$define DELPHI_7_UP}
  {$define DELPHI_8_UP}
  {$define DELPHI_9_UP}
  {$define DELPHI_10_UP}
  {$define DELPHI_11_UP}
  {$define DELPHI_12_UP}
  {$define DELPHI_13_UP}
  {$define DELPHI_14_UP}
  {$define DELPHI_15_UP}
  {$define DELPHI_16_UP}
  {$define DELPHI_17_UP}
  {$define DELPHI_18_UP}
  {$define DELPHI_19_UP}
  {$define CPPB_3_UP}
  {$define CPPB_4_UP}
  {$define CPPB_5_UP}
  {$define CPPB_6_UP}

  {$ifdef BCB}
    {$define CPPB}
  {$else}
    {$define DELPHI}
  {$endif}

{$endif}
