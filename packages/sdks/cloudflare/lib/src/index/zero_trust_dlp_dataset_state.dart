// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_dataset_column.dart';
import 'zero_trust_dlp_dataset_dataset.dart';
import 'zero_trust_dlp_dataset_upload.dart';

/// Input properties used for looking up and filtering ZeroTrustDlpDataset resources.
class ZeroTrustDlpDatasetState {
  final pulumi.Input<String?>? accountId;
  /// Only applies to custom word lists.
  /// Determines if the words should be matched in a case-sensitive manner
  /// Cannot be set to false if `secret` is true or undefined
  final pulumi.Input<bool?>? caseSensitive;
  final pulumi.Input<List<ZeroTrustDlpDatasetColumn>?>? columns;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<ZeroTrustDlpDatasetDataset?>? dataset;
  final pulumi.Input<String?>? datasetId;
  /// The description of the dataset.
  final pulumi.Input<String?>? description;
  /// Dataset encoding version
  final pulumi.Input<int?>? encodingVersion;
  final pulumi.Input<int?>? maxCells;
  final pulumi.Input<String?>? name;
  final pulumi.Input<int?>? numCells;
  /// Generate a secret dataset.
  ///
  /// If true, the response will include a secret to use with the EDM encoder.
  /// If false, the response has no secret and the dataset is uploaded in plaintext.
  final pulumi.Input<bool?>? secret;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  final pulumi.Input<String?>? status;
  /// Stores when the dataset was last updated.
  ///
  /// This includes name or description changes as well as uploads.
  final pulumi.Input<String?>? updatedAt;
  final pulumi.Input<List<ZeroTrustDlpDatasetUpload>?>? uploads;
  /// The version to use when uploading the dataset.
  final pulumi.Input<int?>? version;

  /// Creates a new [ZeroTrustDlpDatasetState].
  /// [accountId] Optional.
  /// [caseSensitive] Only applies to custom word lists.
  /// [columns] Optional.
  /// [createdAt] Optional.
  /// [dataset] Optional.
  /// [datasetId] Optional.
  /// [description] The description of the dataset.
  /// [encodingVersion] Dataset encoding version
  /// [maxCells] Optional.
  /// [name] Optional.
  /// [numCells] Optional.
  /// [secret] Generate a secret dataset.
  /// [status] Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  /// [updatedAt] Stores when the dataset was last updated.
  /// [uploads] Optional.
  /// [version] The version to use when uploading the dataset.
  const ZeroTrustDlpDatasetState({
    this.accountId,
    this.caseSensitive,
    this.columns,
    this.createdAt,
    this.dataset,
    this.datasetId,
    this.description,
    this.encodingVersion,
    this.maxCells,
    this.name,
    this.numCells,
    this.secret,
    this.status,
    this.updatedAt,
    this.uploads,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'caseSensitive': ?caseSensitive,
      'columns': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpDatasetColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<ZeroTrustDlpDatasetColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
      'dataset': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDlpDatasetDataset, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'datasetId': ?datasetId,
      'description': ?description,
      'encodingVersion': ?encodingVersion,
      'maxCells': ?maxCells,
      'name': ?name,
      'numCells': ?numCells,
      'secret': ?secret,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'uploads': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpDatasetUpload>, List<Map<String, dynamic>>>(uploads, (value) => pulumi.Input.encodeList<ZeroTrustDlpDatasetUpload, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory ZeroTrustDlpDatasetState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDatasetState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpDatasetColumn>(guardedValue, (value) => ZeroTrustDlpDatasetColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataset: (() { final guardedValue = map['dataset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDlpDatasetDataset.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodingVersion: (() { final guardedValue = map['encodingVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxCells: (() { final guardedValue = map['maxCells']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numCells: (() { final guardedValue = map['numCells']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploads: (() { final guardedValue = map['uploads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpDatasetUpload>(guardedValue, (value) => ZeroTrustDlpDatasetUpload.fromMap((value as Map).cast<String, dynamic>()))); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
