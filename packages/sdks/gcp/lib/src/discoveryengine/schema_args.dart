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
    required this.dataStoreId,
    this.jsonSchema,
    required this.location,
    this.project,
    required this.schemaId,
  });

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
      dataStoreId: (map['dataStoreId'] as String).input(),
      jsonSchema: map['jsonSchema'] == null ? null : (map['jsonSchema']! as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      schemaId: (map['schemaId'] as String).input(),
    );
  }
}

