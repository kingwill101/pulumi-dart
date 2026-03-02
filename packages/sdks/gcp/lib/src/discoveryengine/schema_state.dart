// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Schema resources.
class SchemaState {
  /// The unique id of the data store.
  final pulumi.Input<String>? dataStoreId;
  /// The JSON representation of the schema.
  final pulumi.Input<String>? jsonSchema;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String>? location;
  /// The unique full resource name of the schema. Values are of the format
  /// `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}/schemas/{schema_id}`.
  /// This field must be a UTF-8 encoded string with a length limit of 1024
  /// characters.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The unique id of the schema.
  final pulumi.Input<String>? schemaId;

  /// Creates a new [SchemaState].
  /// [dataStoreId] The unique id of the data store.
  /// [jsonSchema] The JSON representation of the schema.
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] The unique full resource name of the schema. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  /// [schemaId] The unique id of the schema.
  SchemaState({
    this.dataStoreId,
    this.jsonSchema,
    this.location,
    this.name,
    this.project,
    this.schemaId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStoreId': ?dataStoreId,
      'jsonSchema': ?jsonSchema,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'schemaId': ?schemaId,
    };
  }

  factory SchemaState.fromMap(Map<String, dynamic> map) {
    return SchemaState(
      dataStoreId: map['dataStoreId'] == null ? null : (map['dataStoreId'] as String).input(),
      jsonSchema: map['jsonSchema'] == null ? null : (map['jsonSchema'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      schemaId: map['schemaId'] == null ? null : (map['schemaId'] as String).input(),
    );
  }
}

