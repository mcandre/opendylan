Module:    Win32-dialog
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

// This file is automatically generated from "dlgs.h"; do not edit.


// Adapted from:
/*++


Module Name:

    dlgs.h

Abstract:

    This module contains the UI dialog header information.

--*/
define inline-only constant $ctlFirst                   = #x0400;
define inline-only constant $ctlLast                    = #x04ff;
define inline-only constant $psh1                       = #x0400;
define inline-only constant $psh2                       = #x0401;
define inline-only constant $psh3                       = #x0402;
define inline-only constant $psh4                       = #x0403;
define inline-only constant $psh5                       = #x0404;
define inline-only constant $psh6                       = #x0405;
define inline-only constant $psh7                       = #x0406;
define inline-only constant $psh8                       = #x0407;
define inline-only constant $psh9                       = #x0408;
define inline-only constant $psh10                      = #x0409;
define inline-only constant $psh11                      = #x040a;
define inline-only constant $psh12                      = #x040b;
define inline-only constant $psh13                      = #x040c;
define inline-only constant $psh14                      = #x040d;
define inline-only constant $psh15                      = #x040e;
define inline-only constant $psh16                      = #x040f;
define inline-only constant $chx1                       = #x0410;
define inline-only constant $chx2                       = #x0411;
define inline-only constant $chx3                       = #x0412;
define inline-only constant $chx4                       = #x0413;
define inline-only constant $chx5                       = #x0414;
define inline-only constant $chx6                       = #x0415;
define inline-only constant $chx7                       = #x0416;
define inline-only constant $chx8                       = #x0417;
define inline-only constant $chx9                       = #x0418;
define inline-only constant $chx10                      = #x0419;
define inline-only constant $chx11                      = #x041a;
define inline-only constant $chx12                      = #x041b;
define inline-only constant $chx13                      = #x041c;
define inline-only constant $chx14                      = #x041d;
define inline-only constant $chx15                      = #x041e;
define inline-only constant $chx16                      = #x041f;
define inline-only constant $rad1                       = #x0420;
define inline-only constant $rad2                       = #x0421;
define inline-only constant $rad3                       = #x0422;
define inline-only constant $rad4                       = #x0423;
define inline-only constant $rad5                       = #x0424;
define inline-only constant $rad6                       = #x0425;
define inline-only constant $rad7                       = #x0426;
define inline-only constant $rad8                       = #x0427;
define inline-only constant $rad9                       = #x0428;
define inline-only constant $rad10                      = #x0429;
define inline-only constant $rad11                      = #x042a;
define inline-only constant $rad12                      = #x042b;
define inline-only constant $rad13                      = #x042c;
define inline-only constant $rad14                      = #x042d;
define inline-only constant $rad15                      = #x042e;
define inline-only constant $rad16                      = #x042f;
define inline-only constant $grp1                       = #x0430;
define inline-only constant $grp2                       = #x0431;
define inline-only constant $grp3                       = #x0432;
define inline-only constant $grp4                       = #x0433;
define inline-only constant $frm1                       = #x0434;
define inline-only constant $frm2                       = #x0435;
define inline-only constant $frm3                       = #x0436;
define inline-only constant $frm4                       = #x0437;
define inline-only constant $rct1                       = #x0438;
define inline-only constant $rct2                       = #x0439;
define inline-only constant $rct3                       = #x043a;
define inline-only constant $rct4                       = #x043b;
define inline-only constant $ico1                       = #x043c;
define inline-only constant $ico2                       = #x043d;
define inline-only constant $ico3                       = #x043e;
define inline-only constant $ico4                       = #x043f;
define inline-only constant $stc1                       = #x0440;
define inline-only constant $stc2                       = #x0441;
define inline-only constant $stc3                       = #x0442;
define inline-only constant $stc4                       = #x0443;
define inline-only constant $stc5                       = #x0444;
define inline-only constant $stc6                       = #x0445;
define inline-only constant $stc7                       = #x0446;
define inline-only constant $stc8                       = #x0447;
define inline-only constant $stc9                       = #x0448;
define inline-only constant $stc10                      = #x0449;
define inline-only constant $stc11                      = #x044a;
define inline-only constant $stc12                      = #x044b;
define inline-only constant $stc13                      = #x044c;
define inline-only constant $stc14                      = #x044d;
define inline-only constant $stc15                      = #x044e;
define inline-only constant $stc16                      = #x044f;
define inline-only constant $stc17                      = #x0450;
define inline-only constant $stc18                      = #x0451;
define inline-only constant $stc19                      = #x0452;
define inline-only constant $stc20                      = #x0453;
define inline-only constant $stc21                      = #x0454;
define inline-only constant $stc22                      = #x0455;
define inline-only constant $stc23                      = #x0456;
define inline-only constant $stc24                      = #x0457;
define inline-only constant $stc25                      = #x0458;
define inline-only constant $stc26                      = #x0459;
define inline-only constant $stc27                      = #x045a;
define inline-only constant $stc28                      = #x045b;
define inline-only constant $stc29                      = #x045c;
define inline-only constant $stc30                      = #x045d;
define inline-only constant $stc31                      = #x045e;
define inline-only constant $stc32                      = #x045f;
define inline-only constant $lst1                       = #x0460;
define inline-only constant $lst2                       = #x0461;
define inline-only constant $lst3                       = #x0462;
define inline-only constant $lst4                       = #x0463;
define inline-only constant $lst5                       = #x0464;
define inline-only constant $lst6                       = #x0465;
define inline-only constant $lst7                       = #x0466;
define inline-only constant $lst8                       = #x0467;
define inline-only constant $lst9                       = #x0468;
define inline-only constant $lst10                      = #x0469;
define inline-only constant $lst11                      = #x046a;
define inline-only constant $lst12                      = #x046b;
define inline-only constant $lst13                      = #x046c;
define inline-only constant $lst14                      = #x046d;
define inline-only constant $lst15                      = #x046e;
define inline-only constant $lst16                      = #x046f;
define inline-only constant $cmb1                       = #x0470;
define inline-only constant $cmb2                       = #x0471;
define inline-only constant $cmb3                       = #x0472;
define inline-only constant $cmb4                       = #x0473;
define inline-only constant $cmb5                       = #x0474;
define inline-only constant $cmb6                       = #x0475;
define inline-only constant $cmb7                       = #x0476;
define inline-only constant $cmb8                       = #x0477;
define inline-only constant $cmb9                       = #x0478;
define inline-only constant $cmb10                      = #x0479;
define inline-only constant $cmb11                      = #x047a;
define inline-only constant $cmb12                      = #x047b;
define inline-only constant $cmb13                      = #x047c;
define inline-only constant $cmb14                      = #x047d;
define inline-only constant $cmb15                      = #x047e;
define inline-only constant $cmb16                      = #x047f;
define inline-only constant $edt1                       = #x0480;
define inline-only constant $edt2                       = #x0481;
define inline-only constant $edt3                       = #x0482;
define inline-only constant $edt4                       = #x0483;
define inline-only constant $edt5                       = #x0484;
define inline-only constant $edt6                       = #x0485;
define inline-only constant $edt7                       = #x0486;
define inline-only constant $edt8                       = #x0487;
define inline-only constant $edt9                       = #x0488;
define inline-only constant $edt10                      = #x0489;
define inline-only constant $edt11                      = #x048a;
define inline-only constant $edt12                      = #x048b;
define inline-only constant $edt13                      = #x048c;
define inline-only constant $edt14                      = #x048d;
define inline-only constant $edt15                      = #x048e;
define inline-only constant $edt16                      = #x048f;
define inline-only constant $scr1                       = #x0490;
define inline-only constant $scr2                       = #x0491;
define inline-only constant $scr3                       = #x0492;
define inline-only constant $scr4                       = #x0493;
define inline-only constant $scr5                       = #x0494;
define inline-only constant $scr6                       = #x0495;
define inline-only constant $scr7                       = #x0496;
define inline-only constant $scr8                       = #x0497;
define inline-only constant $FILEOPENORD                = 1536;
define inline-only constant $MULTIFILEOPENORD           = 1537;
define inline-only constant $PRINTDLGORD                = 1538;
define inline-only constant $PRNSETUPDLGORD             = 1539;
define inline-only constant $FINDDLGORD                 = 1540;
define inline-only constant $REPLACEDLGORD              = 1541;
define inline-only constant $FONTDLGORD                 = 1542;
define inline-only constant $FORMATDLGORD31             = 1543;
define inline-only constant $FORMATDLGORD30             = 1544;
define inline-only constant $RUNDLGORD                  = 1545;
define inline-only constant $PAGESETUPDLGORD            = 1546;
define inline-only constant $NEWFILEOPENORD             = 1547;
define inline-only constant $NEWOBJECTOPENORD           = 1548;

