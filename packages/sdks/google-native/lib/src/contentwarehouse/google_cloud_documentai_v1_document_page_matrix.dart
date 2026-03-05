// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation for transformation matrix, intended to be compatible and used with OpenCV format for image manipulation.
class GoogleCloudDocumentaiV1DocumentPageMatrix {
  /// Number of columns in the matrix.
  final pulumi.Input<int>? cols;
  /// The matrix data.
  final pulumi.Input<String>? data;
  /// Number of rows in the matrix.
  final pulumi.Input<int>? rows;
  /// This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  final pulumi.Input<int>? type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageMatrix].
  /// [cols] Number of columns in the matrix.
  /// [data] The matrix data.
  /// [rows] Number of rows in the matrix.
  /// [type] This encodes information about what data type the matrix uses. For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  GoogleCloudDocumentaiV1DocumentPageMatrix({
    this.cols,
    this.data,
    this.rows,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cols': ?cols,
      'data': ?data,
      'rows': ?rows,
      'type': ?type,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageMatrix.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageMatrix(
      cols: (() { final guardedValue = map['cols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rows: (() { final guardedValue = map['rows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

