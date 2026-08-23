// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation for transformation matrix, intended to be compatible and used with OpenCV format for image manipulation.
class GoogleCloudDocumentaiV1DocumentPageMatrixResponse {
  /// Number of columns in the matrix.
  final pulumi.Input<int> cols;
  /// The matrix data.
  final pulumi.Input<String> data;
  /// Number of rows in the matrix.
  final pulumi.Input<int> rows;
  /// This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  final pulumi.Input<int> type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageMatrixResponse].
  /// [cols] Number of columns in the matrix.
  /// [data] The matrix data.
  /// [rows] Number of rows in the matrix.
  /// [type] This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  const GoogleCloudDocumentaiV1DocumentPageMatrixResponse({
    required this.cols,
    required this.data,
    required this.rows,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cols': cols,
      'data': data,
      'rows': rows,
      'type': type,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageMatrixResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageMatrixResponse(
      cols: pulumi.Input.fromValue(map['cols'] as int),
      data: pulumi.Input.fromValue(map['data'] as String),
      rows: pulumi.Input.fromValue(map['rows'] as int),
      type: pulumi.Input.fromValue(map['type'] as int),
    );
  }
}
