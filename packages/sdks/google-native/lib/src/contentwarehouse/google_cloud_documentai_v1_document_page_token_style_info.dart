// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_color.dart';

/// Font and other text style attributes.
class GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo {
  /// Color of the background.
  final pulumi.Input<GoogleTypeColor>? backgroundColor;
  /// Whether the text is bold (equivalent to font_weight is at least `700`).
  final pulumi.Input<bool>? bold;
  /// Font size in points (`1` point is `¹⁄₇₂` inches).
  final pulumi.Input<int>? fontSize;
  /// Name or style of the font.
  final pulumi.Input<String>? fontType;
  /// TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy). Normal is `400`, bold is `700`.
  final pulumi.Input<int>? fontWeight;
  /// Whether the text is handwritten.
  final pulumi.Input<bool>? handwritten;
  /// Whether the text is italic.
  final pulumi.Input<bool>? italic;
  /// Letter spacing in points.
  final pulumi.Input<double>? letterSpacing;
  /// Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷ `72.0`.
  final pulumi.Input<double>? pixelFontSize;
  /// Whether the text is in small caps.
  final pulumi.Input<bool>? smallcaps;
  /// Whether the text is strikethrough.
  final pulumi.Input<bool>? strikeout;
  /// Whether the text is a subscript.
  final pulumi.Input<bool>? subscript;
  /// Whether the text is a superscript.
  final pulumi.Input<bool>? superscript;
  /// Color of the text.
  final pulumi.Input<GoogleTypeColor>? textColor;
  /// Whether the text is underlined.
  final pulumi.Input<bool>? underlined;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo].
  /// [backgroundColor] Color of the background.
  /// [bold] Whether the text is bold (equivalent to font_weight is at least `700`).
  /// [fontSize] Font size in points (`1` point is `¹⁄₇₂` inches).
  /// [fontType] Name or style of the font.
  /// [fontWeight] TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy). Normal is `400`, bold is `700`.
  /// [handwritten] Whether the text is handwritten.
  /// [italic] Whether the text is italic.
  /// [letterSpacing] Letter spacing in points.
  /// [pixelFontSize] Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷ `72.0`.
  /// [smallcaps] Whether the text is in small caps.
  /// [strikeout] Whether the text is strikethrough.
  /// [subscript] Whether the text is a subscript.
  /// [superscript] Whether the text is a superscript.
  /// [textColor] Color of the text.
  /// [underlined] Whether the text is underlined.
  const GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo({
    this.backgroundColor,
    this.bold,
    this.fontSize,
    this.fontType,
    this.fontWeight,
    this.handwritten,
    this.italic,
    this.letterSpacing,
    this.pixelFontSize,
    this.smallcaps,
    this.strikeout,
    this.subscript,
    this.superscript,
    this.textColor,
    this.underlined,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': ?pulumi.Input.mapOptionalInputValue<GoogleTypeColor, Map<String, dynamic>>(backgroundColor, (value) => value.toMap()),
      'bold': ?bold,
      'fontSize': ?fontSize,
      'fontType': ?fontType,
      'fontWeight': ?fontWeight,
      'handwritten': ?handwritten,
      'italic': ?italic,
      'letterSpacing': ?letterSpacing,
      'pixelFontSize': ?pixelFontSize,
      'smallcaps': ?smallcaps,
      'strikeout': ?strikeout,
      'subscript': ?subscript,
      'superscript': ?superscript,
      'textColor': ?pulumi.Input.mapOptionalInputValue<GoogleTypeColor, Map<String, dynamic>>(textColor, (value) => value.toMap()),
      'underlined': ?underlined,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo(
      backgroundColor: (() { final guardedValue = map['backgroundColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleTypeColor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bold: (() { final guardedValue = map['bold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fontSize: (() { final guardedValue = map['fontSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fontType: (() { final guardedValue = map['fontType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fontWeight: (() { final guardedValue = map['fontWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      handwritten: (() { final guardedValue = map['handwritten']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      italic: (() { final guardedValue = map['italic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      letterSpacing: (() { final guardedValue = map['letterSpacing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      pixelFontSize: (() { final guardedValue = map['pixelFontSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      smallcaps: (() { final guardedValue = map['smallcaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      strikeout: (() { final guardedValue = map['strikeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subscript: (() { final guardedValue = map['subscript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      superscript: (() { final guardedValue = map['superscript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      textColor: (() { final guardedValue = map['textColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleTypeColor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      underlined: (() { final guardedValue = map['underlined']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

