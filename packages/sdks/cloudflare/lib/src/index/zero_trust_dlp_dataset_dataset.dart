// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_dataset_dataset_column.dart';
import 'zero_trust_dlp_dataset_dataset_upload.dart';

class ZeroTrustDlpDatasetDataset {
  final pulumi.Input<bool?>? caseSensitive;
  final pulumi.Input<List<ZeroTrustDlpDatasetDatasetColumn>?>? columns;
  final pulumi.Input<String?>? createdAt;
  /// The description of the dataset.
  final pulumi.Input<String?>? description;
  final pulumi.Input<int?>? encodingVersion;
  final pulumi.Input<String?>? id;
  final pulumi.Input<String?>? name;
  final pulumi.Input<int?>? numCells;
  final pulumi.Input<bool?>? secret;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  final pulumi.Input<String?>? status;
  /// Stores when the dataset was last updated.
  final pulumi.Input<String?>? updatedAt;
  final pulumi.Input<List<ZeroTrustDlpDatasetDatasetUpload>?>? uploads;

  /// Creates a new [ZeroTrustDlpDatasetDataset].
  /// [caseSensitive] Optional.
  /// [columns] Optional.
  /// [createdAt] Optional.
  /// [description] The description of the dataset.
  /// [encodingVersion] Optional.
  /// [id] Optional.
  /// [name] Optional.
  /// [numCells] Optional.
  /// [secret] Optional.
  /// [status] Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  /// [updatedAt] Stores when the dataset was last updated.
  /// [uploads] Optional.
  const ZeroTrustDlpDatasetDataset({
    this.caseSensitive,
    this.columns,
    this.createdAt,
    this.description,
    this.encodingVersion,
    this.id,
    this.name,
    this.numCells,
    this.secret,
    this.status,
    this.updatedAt,
    this.uploads,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': ?caseSensitive,
      'columns': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpDatasetDatasetColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<ZeroTrustDlpDatasetDatasetColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
      'description': ?description,
      'encodingVersion': ?encodingVersion,
      'id': ?id,
      'name': ?name,
      'numCells': ?numCells,
      'secret': ?secret,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'uploads': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpDatasetDatasetUpload>, List<Map<String, dynamic>>>(uploads, (value) => pulumi.Input.encodeList<ZeroTrustDlpDatasetDatasetUpload, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDlpDatasetDataset.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDatasetDataset(
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpDatasetDatasetColumn>(guardedValue, (value) => ZeroTrustDlpDatasetDatasetColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodingVersion: (() { final guardedValue = map['encodingVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numCells: (() { final guardedValue = map['numCells']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploads: (() { final guardedValue = map['uploads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpDatasetDatasetUpload>(guardedValue, (value) => ZeroTrustDlpDatasetDatasetUpload.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
