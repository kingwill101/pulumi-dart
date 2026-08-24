// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_dataset_column.dart';
import 'get_zero_trust_dlp_dataset_upload.dart';

/// Result data returned by getZeroTrustDlpDataset.
class GetZeroTrustDlpDatasetResult {
  final String? accountId;
  final bool? caseSensitive;
  final List<GetZeroTrustDlpDatasetColumn>? columns;
  final String? createdAt;
  final String? datasetId;
  /// The description of the dataset.
  final String? description;
  final int? encodingVersion;
  /// The ID of this resource.
  final String? id;
  final String? name;
  final int? numCells;
  final bool? secret;
  /// Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  final String? status;
  /// Stores when the dataset was last updated.
  final String? updatedAt;
  final List<GetZeroTrustDlpDatasetUpload>? uploads;

  /// Creates a new [GetZeroTrustDlpDatasetResult].
  /// [accountId] Optional.
  /// [caseSensitive] Optional.
  /// [columns] Optional.
  /// [createdAt] Optional.
  /// [datasetId] Optional.
  /// [description] The description of the dataset.
  /// [encodingVersion] Optional.
  /// [id] The ID of this resource.
  /// [name] Optional.
  /// [numCells] Optional.
  /// [secret] Optional.
  /// [status] Available values: "empty", "uploading", "pending", "processing", "failed", "complete".
  /// [updatedAt] Stores when the dataset was last updated.
  /// [uploads] Optional.
  const GetZeroTrustDlpDatasetResult({
    this.accountId,
    this.caseSensitive,
    this.columns,
    this.createdAt,
    this.datasetId,
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
      'accountId': ?accountId,
      'caseSensitive': ?caseSensitive,
      'columns': ?(() { final guardedValue = columns; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpDatasetColumn, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdAt': ?createdAt,
      'datasetId': ?datasetId,
      'description': ?description,
      'encodingVersion': ?encodingVersion,
      'id': ?id,
      'name': ?name,
      'numCells': ?numCells,
      'secret': ?secret,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'uploads': ?(() { final guardedValue = uploads; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpDatasetUpload, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustDlpDatasetResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDatasetResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpDatasetColumn>(guardedValue, (value) => GetZeroTrustDlpDatasetColumn.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encodingVersion: (() { final guardedValue = map['encodingVersion']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numCells: (() { final guardedValue = map['numCells']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploads: (() { final guardedValue = map['uploads']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpDatasetUpload>(guardedValue, (value) => GetZeroTrustDlpDatasetUpload.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
