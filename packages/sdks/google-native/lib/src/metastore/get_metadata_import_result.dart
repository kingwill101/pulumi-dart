// ignore_for_file: unused_element, unnecessary_cast

import 'database_dump_response.dart';

/// Result data returned by getMetadataImport.
class GetMetadataImportResult {
  /// The time when the metadata import was started.
  final String createTime;
  /// Immutable. A database dump from a pre-existing metastore's database.
  final DatabaseDumpResponse databaseDump;
  /// The description of the metadata import.
  final String description;
  /// The time when the metadata import finished.
  final String endTime;
  /// Immutable. The relative resource name of the metadata import, of the form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.
  final String name;
  /// The current state of the metadata import.
  final String state;
  /// The time when the metadata import was last updated.
  final String updateTime;

  /// Creates a new [GetMetadataImportResult].
  /// [createTime] The time when the metadata import was started.
  /// [databaseDump] Immutable. A database dump from a pre-existing metastore's database.
  /// [description] The description of the metadata import.
  /// [endTime] The time when the metadata import finished.
  /// [name] Immutable. The relative resource name of the metadata import, of the form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.
  /// [state] The current state of the metadata import.
  /// [updateTime] The time when the metadata import was last updated.
  const GetMetadataImportResult({
    required this.createTime,
    required this.databaseDump,
    required this.description,
    required this.endTime,
    required this.name,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'databaseDump': databaseDump.toMap(),
      'description': description,
      'endTime': endTime,
      'name': name,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetMetadataImportResult.fromMap(Map<String, dynamic> map) {
    return GetMetadataImportResult(
      createTime: map['createTime'] as String,
      databaseDump: DatabaseDumpResponse.fromMap((map['databaseDump']! as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      endTime: map['endTime'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
