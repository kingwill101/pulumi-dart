// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_document_style_font_size_response.dart';
import 'google_cloud_documentai_v1_document_text_anchor_response.dart';
import 'google_type_color_response.dart';

/// Annotation for common text style attributes. This adheres to CSS conventions as much as possible.
class GoogleCloudDocumentaiV1DocumentStyleResponse {
  /// Text background color.
  final pulumi.Input<GoogleTypeColorResponse> backgroundColor;
  /// Text color.
  final pulumi.Input<GoogleTypeColorResponse> color;
  /// Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-family.asp
  final pulumi.Input<String> fontFamily;
  /// Font size.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse> fontSize;
  /// [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp). Possible values are `normal`, `bold`, `bolder`, and `lighter`.
  final pulumi.Input<String> fontWeight;
  /// Text anchor indexing into the Document.text.
  final pulumi.Input<GoogleCloudDocumentaiV1DocumentTextAnchorResponse> textAnchor;
  /// [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp). Follows CSS standard.
  final pulumi.Input<String> textDecoration;
  /// [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp). Possible values are `normal`, `italic`, and `oblique`.
  final pulumi.Input<String> textStyle;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentStyleResponse].
  /// [backgroundColor] Text background color.
  /// [color] Text color.
  /// [fontFamily] Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-family.asp
  /// [fontSize] Font size.
  /// [fontWeight] [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp). Possible values are `normal`, `bold`, `bolder`, and `lighter`.
  /// [textAnchor] Text anchor indexing into the Document.text.
  /// [textDecoration] [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp). Follows CSS standard.
  /// [textStyle] [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp). Possible values are `normal`, `italic`, and `oblique`.
  const GoogleCloudDocumentaiV1DocumentStyleResponse({
    required this.backgroundColor,
    required this.color,
    required this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
    required this.textAnchor,
    required this.textDecoration,
    required this.textStyle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': pulumi.Input.mapInputValue<GoogleTypeColorResponse, Map<String, dynamic>>(backgroundColor, (value) => value.toMap()),
      'color': pulumi.Input.mapInputValue<GoogleTypeColorResponse, Map<String, dynamic>>(color, (value) => value.toMap()),
      'fontFamily': fontFamily,
      'fontSize': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse, Map<String, dynamic>>(fontSize, (value) => value.toMap()),
      'fontWeight': fontWeight,
      'textAnchor': pulumi.Input.mapInputValue<GoogleCloudDocumentaiV1DocumentTextAnchorResponse, Map<String, dynamic>>(textAnchor, (value) => value.toMap()),
      'textDecoration': textDecoration,
      'textStyle': textStyle,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentStyleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentStyleResponse(
      backgroundColor: pulumi.Input.fromValue(GoogleTypeColorResponse.fromMap((map['backgroundColor']! as Map).cast<String, dynamic>())),
      color: pulumi.Input.fromValue(GoogleTypeColorResponse.fromMap((map['color']! as Map).cast<String, dynamic>())),
      fontFamily: pulumi.Input.fromValue(map['fontFamily'] as String),
      fontSize: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse.fromMap((map['fontSize']! as Map).cast<String, dynamic>())),
      fontWeight: pulumi.Input.fromValue(map['fontWeight'] as String),
      textAnchor: pulumi.Input.fromValue(GoogleCloudDocumentaiV1DocumentTextAnchorResponse.fromMap((map['textAnchor']! as Map).cast<String, dynamic>())),
      textDecoration: pulumi.Input.fromValue(map['textDecoration'] as String),
      textStyle: pulumi.Input.fromValue(map['textStyle'] as String),
    );
  }
}
