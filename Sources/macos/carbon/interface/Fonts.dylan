Module:    carbon-interface
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

// This file is automatically generated from "Fonts.h"; do not edit.

// unnamed enum:
define inline-only constant $systemFont                = 0;
define inline-only constant $applFont                  = 1;

// unnamed enum:
define inline-only constant $kPlatformDefaultGuiFontID = $applFont;

// unnamed enum:
define inline-only constant $kFontIDNewYork            = 2;
define inline-only constant $kFontIDGeneva             = 3;
define inline-only constant $kFontIDMonaco             = 4;
define inline-only constant $kFontIDVenice             = 5;
define inline-only constant $kFontIDLondon             = 6;
define inline-only constant $kFontIDAthens             = 7;
define inline-only constant $kFontIDSanFrancisco       = 8;
define inline-only constant $kFontIDToronto            = 9;
define inline-only constant $kFontIDCairo              = 11;
define inline-only constant $kFontIDLosAngeles         = 12;
define inline-only constant $kFontIDTimes              = 20;
define inline-only constant $kFontIDHelvetica          = 21;
define inline-only constant $kFontIDCourier            = 22;
define inline-only constant $kFontIDSymbol             = 23;
define inline-only constant $kFontIDMobile             = 24;

// unnamed enum:
define inline-only constant $commandMark               = 17;
define inline-only constant $checkMark                 = 18;
define inline-only constant $diamondMark               = 19;
define inline-only constant $appleMark                 = 20;

// unnamed enum:
define inline-only constant $propFont                  = 36864;
define inline-only constant $prpFntH                   = 36865;
define inline-only constant $prpFntW                   = 36866;
define inline-only constant $prpFntHW                  = 36867;
define inline-only constant $fixedFont                 = 45056;
define inline-only constant $fxdFntH                   = 45057;
define inline-only constant $fxdFntW                   = 45058;
define inline-only constant $fxdFntHW                  = 45059;
define inline-only constant $fontWid                   = 44208;


define C-struct <FMInput>
  sealed inline-only slot family-value   :: <C-short>;
  sealed inline-only slot size-value     :: <C-short>;
  sealed inline-only slot face-value     :: <Style>;
  sealed inline-only slot needBits-value :: <MacBoolean>;
  sealed inline-only slot device-value   :: <C-short>;
  sealed inline-only slot numer-value    :: <Point>;
  sealed inline-only slot denom-value    :: <Point>;
  pack: 2;
  c-name: "struct FMInput";
end;
define C-pointer-type <FMInput*> => <FMInput>;
define C-pointer-type <FMInput**> => <FMInput*>;

define C-struct <FMOutput>
  sealed inline-only slot errNum-value   :: <C-short>;
  sealed inline-only slot fontHandle-value :: <Handle>;
  sealed inline-only slot boldPixels-value :: <UInt8>;
  sealed inline-only slot italicPixels-value :: <UInt8>;
  sealed inline-only slot ulOffset-value :: <UInt8>;
  sealed inline-only slot ulShadow-value :: <UInt8>;
  sealed inline-only slot ulThick-value  :: <UInt8>;
  sealed inline-only slot shadowPixels-value :: <UInt8>;
  sealed inline-only slot extra-value    :: <SInt8>;
  sealed inline-only slot ascent-value   :: <UInt8>;
  sealed inline-only slot descent-value  :: <UInt8>;
  sealed inline-only slot widMax-value   :: <UInt8>;
  sealed inline-only slot leading-value  :: <SInt8>;
  sealed inline-only slot curStyle-value :: <SInt8>;
  sealed inline-only slot numer-value    :: <Point>;
  sealed inline-only slot denom-value    :: <Point>;
  pack: 2;
  c-name: "struct FMOutput";
end;
define C-pointer-type <FMOutput*> => <FMOutput>;
define C-pointer-type <FMOutput**> => <FMOutput*>;
define C-pointer-type <FMOutPtr> => <FMOutput>;
define C-pointer-type <FMOutputPtr> => <FMOutput>;

define C-struct <FontRec>
  sealed inline-only slot fontType-value :: <C-short>;
  sealed inline-only slot firstChar-value :: <C-short>;
  sealed inline-only slot lastChar-value :: <C-short>;
  sealed inline-only slot widMax-value   :: <C-short>;
  sealed inline-only slot kernMax-value  :: <C-short>;
  sealed inline-only slot nDescent-value :: <C-short>;
  sealed inline-only slot fRectWidth-value :: <C-short>;
  sealed inline-only slot fRectHeight-value :: <C-short>;
  sealed inline-only slot owTLoc-value   :: <C-unsigned-short>;
  sealed inline-only slot ascent-value   :: <C-short>;
  sealed inline-only slot descent-value  :: <C-short>;
  sealed inline-only slot leading-value  :: <C-short>;
  sealed inline-only slot rowWords-value :: <C-short>;
  pack: 2;
  c-name: "struct FontRec";
end;
define C-pointer-type <FontRec*> => <FontRec>;
define C-pointer-type <FontRec**> => <FontRec*>;
define C-pointer-type <FontRecPtr> => <FontRec>;
define C-pointer-type <FontRecHdl> => <FontRecPtr>;

define C-struct <FMetricRec>
  sealed inline-only slot ascent-value   :: <Fixed>;
  sealed inline-only slot descent-value  :: <Fixed>;
  sealed inline-only slot leading-value  :: <Fixed>;
  sealed inline-only slot widMax-value   :: <Fixed>;
  sealed inline-only slot wTabHandle-value :: <Handle>;
  pack: 2;
  c-name: "struct FMetricRec";
end;
define C-pointer-type <FMetricRec*> => <FMetricRec>;
define C-pointer-type <FMetricRec**> => <FMetricRec*>;
define C-pointer-type <FMetricRecPtr> => <FMetricRec>;
define C-pointer-type <FMetricRecHandle> => <FMetricRecPtr>;

define C-struct <WidEntry>
  sealed inline-only slot widStyle-value :: <C-short>;
  pack: 2;
  c-name: "struct WidEntry";
end;
define C-pointer-type <WidEntry*> => <WidEntry>;
define C-pointer-type <WidEntry**> => <WidEntry*>;

define C-struct <WidTable>
  sealed inline-only slot numWidths-value :: <C-short>;
  pack: 2;
  c-name: "struct WidTable";
end;
define C-pointer-type <WidTable*> => <WidTable>;
define C-pointer-type <WidTable**> => <WidTable*>;

define C-struct <AsscEntry>
  sealed inline-only slot fontSize-value :: <C-short>;
  sealed inline-only slot fontStyle-value :: <C-short>;
  sealed inline-only slot fontID-value   :: <C-short>;
  pack: 2;
  c-name: "struct AsscEntry";
end;
define C-pointer-type <AsscEntry*> => <AsscEntry>;
define C-pointer-type <AsscEntry**> => <AsscEntry*>;

define C-struct <FontAssoc>
  sealed inline-only slot numAssoc-value :: <C-short>;
  pack: 2;
  c-name: "struct FontAssoc";
end;
define C-pointer-type <FontAssoc*> => <FontAssoc>;
define C-pointer-type <FontAssoc**> => <FontAssoc*>;

define C-struct <StyleTable>
  sealed inline-only slot fontClass-value :: <C-short>;
  sealed inline-only slot offset-value   :: <C-both-long>;
  sealed inline-only slot reserved-value :: <C-both-long>;
  sealed inline-only array slot indexes-array :: <C-char>,
    length: 48,
    address-getter: indexes-value;
  pack: 2;
  c-name: "struct StyleTable";
end;
define C-pointer-type <StyleTable*> => <StyleTable>;
define C-pointer-type <StyleTable**> => <StyleTable*>;

define C-struct <NameTable>
  sealed inline-only slot stringCount-value :: <C-short>;
  sealed inline-only slot baseFontName-value :: <Str255>;
  pack: 2;
  c-name: "struct NameTable";
end;
define C-pointer-type <NameTable*> => <NameTable>;
define C-pointer-type <NameTable**> => <NameTable*>;

define C-struct <KernPair>
  sealed inline-only slot kernFirst-value :: <C-char>;
  sealed inline-only slot kernSecond-value :: <C-char>;
  sealed inline-only slot kernWidth-value :: <C-short>;
  pack: 2;
  c-name: "struct KernPair";
end;
define C-pointer-type <KernPair*> => <KernPair>;
define C-pointer-type <KernPair**> => <KernPair*>;

define C-struct <KernEntry>
  sealed inline-only slot kernStyle-value :: <C-short>;
  sealed inline-only slot kernLength-value :: <C-short>;
  pack: 2;
  c-name: "struct KernEntry";
end;
define C-pointer-type <KernEntry*> => <KernEntry>;
define C-pointer-type <KernEntry**> => <KernEntry*>;

define C-struct <KernTable>
  sealed inline-only slot numKerns-value :: <C-short>;
  pack: 2;
  c-name: "struct KernTable";
end;
define C-pointer-type <KernTable*> => <KernTable>;
define C-pointer-type <KernTable**> => <KernTable*>;

define C-struct <WidthTable>
  sealed inline-only array slot tabData-array :: <Fixed>,
    length: 256,
    address-getter: tabData-value;
  sealed inline-only slot tabFont-value  :: <Handle>;
  sealed inline-only slot sExtra-value   :: <C-both-long>;
  sealed inline-only slot style-value    :: <C-both-long>;
  sealed inline-only slot fID-value      :: <C-short>;
  sealed inline-only slot fSize-value    :: <C-short>;
  sealed inline-only slot face-value     :: <C-short>;
  sealed inline-only slot device-value   :: <C-short>;
  sealed inline-only slot inNumer-value  :: <Point>;
  sealed inline-only slot inDenom-value  :: <Point>;
  sealed inline-only slot aFID-value     :: <C-short>;
  sealed inline-only slot fHand-value    :: <Handle>;
  sealed inline-only slot usedFam-value  :: <MacBoolean>;
  sealed inline-only slot aFace-value    :: <UInt8>;
  sealed inline-only slot vOutput-value  :: <C-short>;
  sealed inline-only slot hOutput-value  :: <C-short>;
  sealed inline-only slot vFactor-value  :: <C-short>;
  sealed inline-only slot hFactor-value  :: <C-short>;
  sealed inline-only slot aSize-value    :: <C-short>;
  sealed inline-only slot tabSize-value  :: <C-short>;
  pack: 2;
  c-name: "struct WidthTable";
end;
define C-pointer-type <WidthTable*> => <WidthTable>;
define C-pointer-type <WidthTable**> => <WidthTable*>;
define C-pointer-type <WidthTablePtr> => <WidthTable>;
define C-pointer-type <WidthTableHdl> => <WidthTablePtr>;

define C-struct <FamRec>
  sealed inline-only slot ffFlags-value  :: <C-short>;
  sealed inline-only slot ffFamID-value  :: <C-short>;
  sealed inline-only slot ffFirstChar-value :: <C-short>;
  sealed inline-only slot ffLastChar-value :: <C-short>;
  sealed inline-only slot ffAscent-value :: <C-short>;
  sealed inline-only slot ffDescent-value :: <C-short>;
  sealed inline-only slot ffLeading-value :: <C-short>;
  sealed inline-only slot ffWidMax-value :: <C-short>;
  sealed inline-only slot ffWTabOff-value :: <C-both-long>;
  sealed inline-only slot ffKernOff-value :: <C-both-long>;
  sealed inline-only slot ffStylOff-value :: <C-both-long>;
  sealed inline-only array slot ffProperty-array :: <C-short>,
    length: 9,
    address-getter: ffProperty-value;
  sealed inline-only array slot ffIntl-array :: <C-short>,
    length: 2,
    address-getter: ffIntl-value;
  sealed inline-only slot ffVersion-value :: <C-short>;
  pack: 2;
  c-name: "struct FamRec";
end;
define C-pointer-type <FamRec*> => <FamRec>;
define C-pointer-type <FamRec**> => <FamRec*>;
define inline constant <FontPointSize> = <SInt16>;
define C-pointer-type <FontPointSize*> => <FontPointSize>;
define C-pointer-type <FontPointSize**> => <FontPointSize*>;
define inline constant <FontFamilyID> = <SInt16>;
define C-pointer-type <FontFamilyID*> => <FontFamilyID>;
define C-pointer-type <FontFamilyID**> => <FontFamilyID*>;

define inline-only C-function InitFonts
  c-name: "InitFonts";
  c-modifiers: "pascal";
end;

define inline-only C-function GetFontName
  parameter familyID   :: <C-short>;
  parameter name       :: <Str255>;
  c-name: "GetFontName";
  c-modifiers: "pascal";
end;

define inline-only C-function GetFNum
  parameter name       :: <ConstStr255Param>;
  parameter familyID   :: <C-short*>;
  c-name: "GetFNum";
  c-modifiers: "pascal";
end;

define inline-only C-function RealFont
  parameter fontNum    :: <C-short>;
  parameter size       :: <C-short>;
  result value :: <MacBoolean>;
  c-name: "RealFont";
  c-modifiers: "pascal";
end;

define inline-only C-function SetFontLock
  parameter lockFlag   :: <MacBoolean>;
  c-name: "SetFontLock";
  c-modifiers: "pascal";
end;

define inline-only C-function FMSwapFont
  parameter inRec      ::  /* const */ <FMInput*>;
  result value :: <FMOutPtr>;
  c-name: "FMSwapFont";
  c-modifiers: "pascal";
end;

define inline-only C-function SetFScaleDisable
  parameter fscaleDisable :: <MacBoolean>;
  c-name: "SetFScaleDisable";
  c-modifiers: "pascal";
end;

define inline-only C-function FontMetrics
  parameter theMetrics :: <FMetricRecPtr>;
  c-name: "FontMetrics";
  c-modifiers: "pascal";
end;

define inline-only C-function SetFractEnable
  parameter fractEnable :: <MacBoolean>;
  c-name: "SetFractEnable";
  c-modifiers: "pascal";
end;

define inline-only C-function GetDefFontSize
  result value :: <C-short>;
  c-name: "GetDefFontSize";
  c-modifiers: "pascal";
end;

define inline-only C-function IsOutline
  parameter numer      :: <Point>;
  parameter denom      :: <Point>;
  result value :: <MacBoolean>;
  c-name: "IsOutline";
  c-modifiers: "pascal";
end;

define inline-only C-function SetOutlinePreferred
  parameter outlinePreferred :: <MacBoolean>;
  c-name: "SetOutlinePreferred";
  c-modifiers: "pascal";
end;

define inline-only C-function GetOutlinePreferred
  result value :: <MacBoolean>;
  c-name: "GetOutlinePreferred";
  c-modifiers: "pascal";
end;

define inline-only C-function OutlineMetrics
  parameter byteCount  :: <C-short>;
  parameter textPtr    ::  /* const */ <C-void*>;
  parameter numer      :: <Point>;
  parameter denom      :: <Point>;
  parameter yMax       :: <C-short*>;
  parameter yMin       :: <C-short*>;
  parameter awArray    :: <FixedPtr>;
  parameter lsbArray   :: <FixedPtr>;
  parameter boundsArray :: <RectPtr>;
  result value :: <OSErr>;
  c-name: "OutlineMetrics";
  c-modifiers: "pascal";
end;

define inline-only C-function SetPreserveGlyph
  parameter preserveGlyph :: <MacBoolean>;
  c-name: "SetPreserveGlyph";
  c-modifiers: "pascal";
end;

define inline-only C-function GetPreserveGlyph
  result value :: <MacBoolean>;
  c-name: "GetPreserveGlyph";
  c-modifiers: "pascal";
end;

define inline-only C-function FlushFonts
  result value :: <OSErr>;
  c-name: "FlushFonts";
  c-modifiers: "pascal";
end;

define inline-only C-function GetSysFont
  result value :: <C-short>;
  c-name: "GetSysFont";
  c-modifiers: "pascal";
end;

define inline-only C-function GetAppFont
  result value :: <C-short>;
  c-name: "GetAppFont";
  c-modifiers: "pascal";
end;

define inline-only C-function SetAntiAliasedTextEnabled
  parameter inEnable   :: <MacBoolean>;
  parameter inMinFontSize :: <SInt16>;
  result value :: <OSStatus>;
  c-name: "SetAntiAliasedTextEnabled";
  c-modifiers: "pascal";
end;

define inline-only C-function IsAntiAliasedTextEnabled
  parameter outMinFontSize :: <SInt16*>;
  result value :: <MacBoolean>;
  c-name: "IsAntiAliasedTextEnabled";
  c-modifiers: "pascal";
end;

define inline-only C-function QDTextBounds
  parameter byteCount  :: <C-short>;
  parameter textAddr   ::  /* const */ <C-void*>;
  parameter bounds     :: <Rect*>;
  c-name: "QDTextBounds";
  c-modifiers: "pascal";
end;

define inline-only C-function FetchFontInfo
  parameter fontID     :: <SInt16>;
  parameter fontSize   :: <SInt16>;
  parameter fontStyle  :: <SInt16>;
  parameter info       :: <FontInfo*>;
  result value :: <OSErr>;
  c-name: "FetchFontInfo";
  c-modifiers: "pascal";
end;

