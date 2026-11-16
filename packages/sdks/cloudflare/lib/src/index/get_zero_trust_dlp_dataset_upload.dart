// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpDatasetUpload {
  final pulumi.Input<int> numCells;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  final pulumi.Input<String> status;
  final pulumi.Input<int> version;

  /// Creates a new [GetZeroTrustDlpDatasetUpload].
  /// [numCells] Required.
  /// [status] Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  /// [version] Required.
  const GetZeroTrustDlpDatasetUpload({
    required this.numCells,
    required this.status,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numCells': numCells,
      'status': status,
      'version': version,
    };
  }

  factory GetZeroTrustDlpDatasetUpload.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDatasetUpload(
      numCells: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['numCells'])),
      status: pulumi.Input.fromValue(map['status'] as String),
      version: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['version'])),
    );
  }
}
