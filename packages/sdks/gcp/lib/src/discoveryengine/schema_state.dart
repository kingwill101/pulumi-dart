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
    pulumi.Output<String>? dataStoreId,
    pulumi.Output<String>? jsonSchema,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? schemaId,
  }) :
      dataStoreId = pulumi.Input.asOptionalInput<String>(dataStoreId),
      jsonSchema = pulumi.Input.asOptionalInput<String>(jsonSchema),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      schemaId = pulumi.Input.asOptionalInput<String>(schemaId);

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
      dataStoreId: map['dataStoreId'] == null ? null : pulumi.Output.create<String>(map['dataStoreId'] as String),
      jsonSchema: map['jsonSchema'] == null ? null : pulumi.Output.create<String>(map['jsonSchema'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      schemaId: map['schemaId'] == null ? null : pulumi.Output.create<String>(map['schemaId'] as String),
    );
  }
}

