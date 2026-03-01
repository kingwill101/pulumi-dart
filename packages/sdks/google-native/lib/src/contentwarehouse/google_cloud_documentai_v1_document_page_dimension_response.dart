// ignore_for_file: unused_element, unnecessary_cast


/// Dimension for the page.
class GoogleCloudDocumentaiV1DocumentPageDimensionResponse {
  /// Page height.
  final double height;
  /// Dimension unit.
  final String unit;
  /// Page width.
  final double width;

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
      height: map['height'] as double,
      unit: map['unit'] as String,
      width: map['width'] as double,
    );
  }
}

