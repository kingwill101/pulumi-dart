// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_dump_metastore_v1alpha.dart';

/// {@template pulumi_metastore_v1alpha_metadata_import_metastore_v1alpha_args_doc}
/// The set of arguments for MetadataImport.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1alpha_metadata_import_metastore_v1alpha_args_doc}
class MetadataImportMetastoreV1alphaArgs {
  /// Immutable. A database dump from a pre-existing metastore's database.
  final pulumi.Input<DatabaseDumpMetastoreV1alpha>? databaseDump;
  /// The description of the metadata import.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;
  /// Required. The ID of the metadata import, which is used as the final component of the metadata import's name.This value must be between 1 and 64 characters long, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  final pulumi.Input<String> metadataImportId;
  /// Immutable. The relative resource name of the metadata import, of the form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  final pulumi.Input<String>? requestId;
  final pulumi.Input<String> serviceId;

  /// Creates a new [MetadataImportMetastoreV1alphaArgs].
  /// [databaseDump] Immutable. A database dump from a pre-existing metastore's database.
  /// [description] The description of the metadata import.
  /// [location] Optional.
  /// [metadataImportId] Required. The ID of the metadata import, which is used as the final component of the metadata import's name.This value must be between 1 and 64 characters long, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  /// [name] Immutable. The relative resource name of the metadata import, of the form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.
  /// [project] Optional.
  /// [requestId] Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  /// [serviceId] Required.
  MetadataImportMetastoreV1alphaArgs({
    this.databaseDump,
    this.description,
    this.location,
    required this.metadataImportId,
    this.name,
    this.project,
    this.requestId,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseDump': ?pulumi.Input.mapOptionalInputValue<DatabaseDumpMetastoreV1alpha, Map<String, dynamic>>(databaseDump, (value) => value.toMap()),
      'description': ?description,
      'location': ?location,
      'metadataImportId': metadataImportId,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'serviceId': serviceId,
    };
  }

  factory MetadataImportMetastoreV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return MetadataImportMetastoreV1alphaArgs(
      databaseDump: map['databaseDump'] == null ? null : (DatabaseDumpMetastoreV1alpha.fromMap((map['databaseDump']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      metadataImportId: (map['metadataImportId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      serviceId: (map['serviceId'] as String).input(),
    );
  }
}

