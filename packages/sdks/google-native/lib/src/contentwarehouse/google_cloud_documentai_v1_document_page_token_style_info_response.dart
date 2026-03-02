// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_color_response.dart';

/// Font and other text style attributes.
class GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse {
  /// Color of the background.
  final pulumi.Input<GoogleTypeColorResponse> backgroundColor;
  /// Whether the text is bold (equivalent to font_weight is at least `700`).
  final pulumi.Input<bool> bold;
  /// Font size in points (`1` point is `¹⁄₇₂` inches).
  final pulumi.Input<int> fontSize;
  /// Name or style of the font.
  final pulumi.Input<String> fontType;
  /// TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy). Normal is `400`, bold is `700`.
  final pulumi.Input<int> fontWeight;
  /// Whether the text is handwritten.
  final pulumi.Input<bool> handwritten;
  /// Whether the text is italic.
  final pulumi.Input<bool> italic;
  /// Letter spacing in points.
  final pulumi.Input<double> letterSpacing;
  /// Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷ `72.0`.
  final pulumi.Input<double> pixelFontSize;
  /// Whether the text is in small caps.
  final pulumi.Input<bool> smallcaps;
  /// Whether the text is strikethrough.
  final pulumi.Input<bool> strikeout;
  /// Whether the text is a subscript.
  final pulumi.Input<bool> subscript;
  /// Whether the text is a superscript.
  final pulumi.Input<bool> superscript;
  /// Color of the text.
  final pulumi.Input<GoogleTypeColorResponse> textColor;
  /// Whether the text is underlined.
  final pulumi.Input<bool> underlined;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse].
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
  GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse({
    required this.backgroundColor,
    required this.bold,
    required this.fontSize,
    required this.fontType,
    required this.fontWeight,
    required this.handwritten,
    required this.italic,
    required this.letterSpacing,
    required this.pixelFontSize,
    required this.smallcaps,
    required this.strikeout,
    required this.subscript,
    required this.superscript,
    required this.textColor,
    required this.underlined,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': pulumi.Input.mapInputValue<GoogleTypeColorResponse, Map<String, dynamic>>(backgroundColor, (value) => value.toMap()),
      'bold': bold,
      'fontSize': fontSize,
      'fontType': fontType,
      'fontWeight': fontWeight,
      'handwritten': handwritten,
      'italic': italic,
      'letterSpacing': letterSpacing,
      'pixelFontSize': pixelFontSize,
      'smallcaps': smallcaps,
      'strikeout': strikeout,
      'subscript': subscript,
      'superscript': superscript,
      'textColor': pulumi.Input.mapInputValue<GoogleTypeColorResponse, Map<String, dynamic>>(textColor, (value) => value.toMap()),
      'underlined': underlined,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse(
      backgroundColor: (GoogleTypeColorResponse.fromMap((map['backgroundColor'] as Map).cast<String, dynamic>())).input(),
      bold: (map['bold'] as bool).input(),
      fontSize: (map['fontSize'] as int).input(),
      fontType: (map['fontType'] as String).input(),
      fontWeight: (map['fontWeight'] as int).input(),
      handwritten: (map['handwritten'] as bool).input(),
      italic: (map['italic'] as bool).input(),
      letterSpacing: (map['letterSpacing'] as double).input(),
      pixelFontSize: (map['pixelFontSize'] as double).input(),
      smallcaps: (map['smallcaps'] as bool).input(),
      strikeout: (map['strikeout'] as bool).input(),
      subscript: (map['subscript'] as bool).input(),
      superscript: (map['superscript'] as bool).input(),
      textColor: (GoogleTypeColorResponse.fromMap((map['textColor'] as Map).cast<String, dynamic>())).input(),
      underlined: (map['underlined'] as bool).input(),
    );
  }
}

