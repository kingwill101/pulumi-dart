// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1beta_get_schema_discoveryengine_v1beta_args_doc}
/// Arguments for getSchema.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1beta_get_schema_discoveryengine_v1beta_args_doc}
class GetSchemaDiscoveryengineV1betaArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> schemaId;

  /// Creates a new [GetSchemaDiscoveryengineV1betaArgs].
  /// [collectionId] Required.
  /// [dataStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [schemaId] Required.
  GetSchemaDiscoveryengineV1betaArgs({
    required this.collectionId,
    required this.dataStoreId,
    required this.location,
    this.project,
    required this.schemaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'dataStoreId': dataStoreId,
      'location': location,
      'project': ?project,
      'schemaId': schemaId,
    };
  }

  factory GetSchemaDiscoveryengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaDiscoveryengineV1betaArgs(
      collectionId: (map['collectionId'] as String).input(),
      dataStoreId: (map['dataStoreId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      schemaId: (map['schemaId'] as String).input(),
    );
  }
}

