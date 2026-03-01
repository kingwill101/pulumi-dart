// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_documentai_v1_document_style_font_size.dart';
import 'google_cloud_documentai_v1_document_text_anchor.dart';
import 'google_type_color.dart';

/// Annotation for common text style attributes. This adheres to CSS conventions as much as possible.
class GoogleCloudDocumentaiV1DocumentStyle {
  /// Text background color.
  final GoogleTypeColor? backgroundColor;
  /// Text color.
  final GoogleTypeColor? color;
  /// Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-family.asp
  final String? fontFamily;
  /// Font size.
  final GoogleCloudDocumentaiV1DocumentStyleFontSize? fontSize;
  /// [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp). Possible values are `normal`, `bold`, `bolder`, and `lighter`.
  final String? fontWeight;
  /// Text anchor indexing into the Document.text.
  final GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;
  /// [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp). Follows CSS standard.
  final String? textDecoration;
  /// [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp). Possible values are `normal`, `italic`, and `oblique`.
  final String? textStyle;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentStyle].
  /// [backgroundColor] Text background color.
  /// [color] Text color.
  /// [fontFamily] Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-family.asp
  /// [fontSize] Font size.
  /// [fontWeight] [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp). Possible values are `normal`, `bold`, `bolder`, and `lighter`.
  /// [textAnchor] Text anchor indexing into the Document.text.
  /// [textDecoration] [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp). Follows CSS standard.
  /// [textStyle] [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp). Possible values are `normal`, `italic`, and `oblique`.
  GoogleCloudDocumentaiV1DocumentStyle({
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
      'backgroundColor': ?backgroundColor == null ? null : backgroundColor!.toMap(),
      'color': ?color == null ? null : color!.toMap(),
      'fontFamily': ?fontFamily,
      'fontSize': ?fontSize == null ? null : fontSize!.toMap(),
      'fontWeight': ?fontWeight,
      'textAnchor': ?textAnchor == null ? null : textAnchor!.toMap(),
      'textDecoration': ?textDecoration,
      'textStyle': ?textStyle,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentStyle.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentStyle(
      backgroundColor: map['backgroundColor'] == null ? null : GoogleTypeColor.fromMap((map['backgroundColor'] as Map).cast<String, dynamic>()),
      color: map['color'] == null ? null : GoogleTypeColor.fromMap((map['color'] as Map).cast<String, dynamic>()),
      fontFamily: map['fontFamily'] == null ? null : map['fontFamily'] as String,
      fontSize: map['fontSize'] == null ? null : GoogleCloudDocumentaiV1DocumentStyleFontSize.fromMap((map['fontSize'] as Map).cast<String, dynamic>()),
      fontWeight: map['fontWeight'] == null ? null : map['fontWeight'] as String,
      textAnchor: map['textAnchor'] == null ? null : GoogleCloudDocumentaiV1DocumentTextAnchor.fromMap((map['textAnchor'] as Map).cast<String, dynamic>()),
      textDecoration: map['textDecoration'] == null ? null : map['textDecoration'] as String,
      textStyle: map['textStyle'] == null ? null : map['textStyle'] as String,
    );
  }
}

