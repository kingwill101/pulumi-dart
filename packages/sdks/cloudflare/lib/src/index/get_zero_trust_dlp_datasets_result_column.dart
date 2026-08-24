// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDlpDatasetsResultColumn {
  final pulumi.Input<String> entryId;
  final pulumi.Input<String> headerName;
  final pulumi.Input<int> numCells;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  final pulumi.Input<String> uploadStatus;

  /// Creates a new [GetZeroTrustDlpDatasetsResultColumn].
  /// [entryId] Required.
  /// [headerName] Required.
  /// [numCells] Required.
  /// [uploadStatus] Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  const GetZeroTrustDlpDatasetsResultColumn({
    required this.entryId,
    required this.headerName,
    required this.numCells,
    required this.uploadStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryId': entryId,
      'headerName': headerName,
      'numCells': numCells,
      'uploadStatus': uploadStatus,
    };
  }

  factory GetZeroTrustDlpDatasetsResultColumn.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDatasetsResultColumn(
      entryId: pulumi.Input.fromValue(map['entryId'] as String),
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      numCells: pulumi.Input.fromValue((map['numCells'] as num).toInt()),
      uploadStatus: pulumi.Input.fromValue(map['uploadStatus'] as String),
    );
  }
}
