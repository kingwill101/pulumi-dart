// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1alpha_get_schema_args_doc}
/// Arguments for getSchema.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1alpha_get_schema_args_doc}
class GetSchemaArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> schemaId;

  /// Creates a new [GetSchemaArgs].
  /// [collectionId] Required.
  /// [dataStoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [schemaId] Required.
  GetSchemaArgs({
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

  factory GetSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaArgs(
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      dataStoreId: pulumi.Input.fromValue(map['dataStoreId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemaId: pulumi.Input.fromValue(map['schemaId'] as String),
    );
  }
}
