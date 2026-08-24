// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_datasets_result_column.dart';
import 'get_zero_trust_dlp_datasets_result_upload.dart';

class GetZeroTrustDlpDatasetsResult {
  final pulumi.Input<bool> caseSensitive;
  final pulumi.Input<List<GetZeroTrustDlpDatasetsResultColumn>> columns;
  final pulumi.Input<String> createdAt;
  /// The description of the dataset.
  final pulumi.Input<String> description;
  final pulumi.Input<int> encodingVersion;
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;
  final pulumi.Input<int> numCells;
  final pulumi.Input<bool> secret;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  final pulumi.Input<String> status;
  /// Stores when the dataset was last updated.
  final pulumi.Input<String> updatedAt;
  final pulumi.Input<List<GetZeroTrustDlpDatasetsResultUpload>> uploads;

  /// Creates a new [GetZeroTrustDlpDatasetsResult].
  /// [caseSensitive] Required.
  /// [columns] Required.
  /// [createdAt] Required.
  /// [description] The description of the dataset.
  /// [encodingVersion] Required.
  /// [id] Required.
  /// [name] Required.
  /// [numCells] Required.
  /// [secret] Required.
  /// [status] Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  /// [updatedAt] Stores when the dataset was last updated.
  /// [uploads] Required.
  const GetZeroTrustDlpDatasetsResult({
    required this.caseSensitive,
    required this.columns,
    required this.createdAt,
    required this.description,
    required this.encodingVersion,
    required this.id,
    required this.name,
    required this.numCells,
    required this.secret,
    required this.status,
    required this.updatedAt,
    required this.uploads,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': caseSensitive,
      'columns': pulumi.Input.mapInputValue<List<GetZeroTrustDlpDatasetsResultColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<GetZeroTrustDlpDatasetsResultColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': createdAt,
      'description': description,
      'encodingVersion': encodingVersion,
      'id': id,
      'name': name,
      'numCells': numCells,
      'secret': secret,
      'status': status,
      'updatedAt': updatedAt,
      'uploads': pulumi.Input.mapInputValue<List<GetZeroTrustDlpDatasetsResultUpload>, List<Map<String, dynamic>>>(uploads, (value) => pulumi.Input.encodeList<GetZeroTrustDlpDatasetsResultUpload, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustDlpDatasetsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDatasetsResult(
      caseSensitive: pulumi.Input.fromValue(map['caseSensitive'] as bool),
      columns: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDlpDatasetsResultColumn>(map['columns']!, (value) => GetZeroTrustDlpDatasetsResultColumn.fromMap((value as Map).cast<String, dynamic>()))),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      encodingVersion: pulumi.Input.fromValue((map['encodingVersion'] as num).toInt()),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      numCells: pulumi.Input.fromValue((map['numCells'] as num).toInt()),
      secret: pulumi.Input.fromValue(map['secret'] as bool),
      status: pulumi.Input.fromValue(map['status'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      uploads: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDlpDatasetsResultUpload>(map['uploads']!, (value) => GetZeroTrustDlpDatasetsResultUpload.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
