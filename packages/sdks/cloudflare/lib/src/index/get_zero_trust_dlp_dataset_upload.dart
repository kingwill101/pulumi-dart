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
      numCells: pulumi.Input.fromValue((map['numCells'] as num).toInt()),
      status: pulumi.Input.fromValue(map['status'] as String),
      version: pulumi.Input.fromValue((map['version'] as num).toInt()),
    );
  }
}
