// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpDatasetDatasetUpload {
  final pulumi.Input<int?>? numCells;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  final pulumi.Input<String?>? status;
  final pulumi.Input<int?>? version;

  /// Creates a new [ZeroTrustDlpDatasetDatasetUpload].
  /// [numCells] Optional.
  /// [status] Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  /// [version] Optional.
  const ZeroTrustDlpDatasetDatasetUpload({
    this.numCells,
    this.status,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numCells': ?numCells,
      'status': ?status,
      'version': ?version,
    };
  }

  factory ZeroTrustDlpDatasetDatasetUpload.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDatasetDatasetUpload(
      numCells: (() { final guardedValue = map['numCells']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
