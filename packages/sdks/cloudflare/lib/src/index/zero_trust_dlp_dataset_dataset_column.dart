// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpDatasetDatasetColumn {
  final pulumi.Input<String?>? entryId;
  final pulumi.Input<String?>? headerName;
  final pulumi.Input<int?>? numCells;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  final pulumi.Input<String?>? uploadStatus;

  /// Creates a new [ZeroTrustDlpDatasetDatasetColumn].
  /// [entryId] Optional.
  /// [headerName] Optional.
  /// [numCells] Optional.
  /// [uploadStatus] Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  const ZeroTrustDlpDatasetDatasetColumn({
    this.entryId,
    this.headerName,
    this.numCells,
    this.uploadStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryId': ?entryId,
      'headerName': ?headerName,
      'numCells': ?numCells,
      'uploadStatus': ?uploadStatus,
    };
  }

  factory ZeroTrustDlpDatasetDatasetColumn.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDatasetDatasetColumn(
      entryId: (() { final guardedValue = map['entryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headerName: (() { final guardedValue = map['headerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numCells: (() { final guardedValue = map['numCells']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      uploadStatus: (() { final guardedValue = map['uploadStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
