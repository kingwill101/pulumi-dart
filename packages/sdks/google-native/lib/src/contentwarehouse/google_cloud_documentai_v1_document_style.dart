// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_style_font_size.dart';
import 'google_cloud_documentai_v1_document_text_anchor.dart';
import 'google_type_color.dart';

/// Annotation for common text style attributes. This adheres to CSS conventions as much as possible.
class GoogleCloudDocumentaiV1DocumentStyle {
  /// Text background color.
  final pulumi.Input<GoogleTypeColor>? backgroundColor;
  /// Text color.
  final pulumi.Input<GoogleTypeColor>? color;
  /// Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-family.asp
  final pulumi.Input<String>? fontFamily;
  /// Font size.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentStyleFontSize>? fontSize;
  /// [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp). Possible values are `normal`, `bold`, `bolder`, and `lighter`.
  final pulumi.Input<String>? fontWeight;
  /// Text anchor indexing into the Document.text.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentTextAnchor>? textAnchor;
  /// [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp). Follows CSS standard.
  final pulumi.Input<String>? textDecoration;
  /// [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp). Possible values are `normal`, `italic`, and `oblique`.
  final pulumi.Input<String>? textStyle;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentStyle].
  /// [backgroundColor] Text background color.
  /// [color] Text color.
  /// [fontFamily] Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-family.asp
  /// [fontSize] Font size.
  /// [fontWeight] [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp). Possible values are `normal`, `bold`, `bolder`, and `lighter`.
  /// [textAnchor] Text anchor indexing into the Document.text.
  /// [textDecoration] [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp). Follows CSS standard.
  /// [textStyle] [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp). Possible values are `normal`, `italic`, and `oblique`.
  const GoogleCloudDocumentaiV1DocumentStyle({
    this.backgroundColor,
    this.color,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.textAnchor,
    this.textDecoration,
    this.textStyle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': ?pulumi.Input.mapOptionalInputValue<GoogleTypeColor, Map<String, dynamic>>(backgroundColor, (value) => value.toMap()),
      'color': ?pulumi.Input.mapOptionalInputValue<GoogleTypeColor, Map<String, dynamic>>(color, (value) => value.toMap()),
      'fontFamily': ?fontFamily,
      'fontSize': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentStyleFontSize, Map<String, dynamic>>(fontSize, (value) => value.toMap()),
      'fontWeight': ?fontWeight,
      'textAnchor': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDocumentaiV1DocumentTextAnchor, Map<String, dynamic>>(textAnchor, (value) => value.toMap()),
      'textDecoration': ?textDecoration,
      'textStyle': ?textStyle,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentStyle.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentStyle(
      backgroundColor: (() { final guardedValue = map['backgroundColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleTypeColor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      color: (() { final guardedValue = map['color']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleTypeColor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fontFamily: (() { final guardedValue = map['fontFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fontSize: (() { final guardedValue = map['fontSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentStyleFontSize.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fontWeight: (() { final guardedValue = map['fontWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textAnchor: (() { final guardedValue = map['textAnchor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentTextAnchor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      textDecoration: (() { final guardedValue = map['textDecoration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textStyle: (() { final guardedValue = map['textStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
