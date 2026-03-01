// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_schema_schema_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_schema_schema_args_doc}
class SchemaArgs {
  /// The unique id of the data store.
  final pulumi.Input<String> dataStoreId;
  /// The JSON representation of the schema.
  final pulumi.Input<String>? jsonSchema;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The unique id of the schema.
  final pulumi.Input<String> schemaId;

  /// Creates a new [SchemaArgs].
  /// [dataStoreId] The unique id of the data store.
  /// [jsonSchema] The JSON representation of the schema.
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [schemaId] The unique id of the schema.
  SchemaArgs({
    required pulumi.Output<String> dataStoreId,
    pulumi.Output<String>? jsonSchema,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> schemaId,
  }) :
      dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
      jsonSchema = pulumi.Input.asOptionalInput<String>(jsonSchema),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      schemaId = pulumi.Input.asInput<String>(schemaId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreId': dataStoreId,
      'jsonSchema': ?jsonSchema,
      'location': location,
      'project': ?project,
      'schemaId': schemaId,
    };
  }

  factory SchemaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaArgs(
      dataStoreId: pulumi.Output.create<String>(map['dataStoreId'] as String),
      jsonSchema: map['jsonSchema'] == null ? null : pulumi.Output.create<String>(map['jsonSchema'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      schemaId: pulumi.Output.create<String>(map['schemaId'] as String),
    );
  }
}

