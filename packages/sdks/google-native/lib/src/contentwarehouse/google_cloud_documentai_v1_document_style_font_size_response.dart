// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Font size with unit.
class GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse {
  /// Font size for the text.
  final pulumi.Input<double> size;

  /// Unit for the font size. Follows CSS naming (such as `in`, `px`, and `pt`).
  final pulumi.Input<String> unit;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse].
  /// [size] Font size for the text.
  /// [unit] Unit for the font size. Follows CSS naming (such as `in`, `px`, and `pt`).
  GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse({
    required this.size,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'size': size, 'unit': unit};
  }

  factory GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse(
      size: pulumi.Input.fromValue(map['size'] as double),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}
