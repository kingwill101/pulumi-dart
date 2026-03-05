// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dimension for the page.
class GoogleCloudDocumentaiV1DocumentPageDimensionResponse {
  /// Page height.
  final pulumi.Input<double> height;
  /// Dimension unit.
  final pulumi.Input<String> unit;
  /// Page width.
  final pulumi.Input<double> width;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageDimensionResponse].
  /// [height] Page height.
  /// [unit] Dimension unit.
  /// [width] Page width.
  GoogleCloudDocumentaiV1DocumentPageDimensionResponse({
    required this.height,
    required this.unit,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': height,
      'unit': unit,
      'width': width,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageDimensionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageDimensionResponse(
      height: pulumi.Input.fromValue(map['height'] as double),
      unit: pulumi.Input.fromValue(map['unit'] as String),
      width: pulumi.Input.fromValue(map['width'] as double),
    );
  }
}

