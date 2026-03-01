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
    required pulumi.Output<String> collectionId,
    required pulumi.Output<String> dataStoreId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> schemaId,
  }) :
      collectionId = pulumi.Input.asInput<String>(collectionId),
      dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      schemaId = pulumi.Input.asInput<String>(schemaId);

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
      collectionId: pulumi.Output.create<String>(map['collectionId'] as String),
      dataStoreId: pulumi.Output.create<String>(map['dataStoreId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      schemaId: pulumi.Output.create<String>(map['schemaId'] as String),
    );
  }
}

