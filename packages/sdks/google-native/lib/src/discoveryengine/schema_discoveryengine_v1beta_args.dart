// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1beta_schema_discoveryengine_v1beta_args_doc}
/// The set of arguments for Schema.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1beta_schema_discoveryengine_v1beta_args_doc}
class SchemaDiscoveryengineV1betaArgs {
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;

  /// The JSON representation of the schema.
  final pulumi.Input<String>? jsonSchema;
  final pulumi.Input<String>? location;

  /// Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Required. The ID to use for the Schema, which will become the final component of the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  final pulumi.Input<String> schemaId;

  /// The structured representation of the schema.
  final pulumi.Input<Map<String, String>>? structSchema;

  /// Creates a new [SchemaDiscoveryengineV1betaArgs].
  /// [collectionId] Required.
  /// [dataStoreId] Required.
  /// [jsonSchema] The JSON representation of the schema.
  /// [location] Optional.
  /// [name] Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  /// [project] Optional.
  /// [schemaId] Required. The ID to use for the Schema, which will become the final component of the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  /// [structSchema] The structured representation of the schema.
  SchemaDiscoveryengineV1betaArgs({
    required this.collectionId,
    required this.dataStoreId,
    this.jsonSchema,
    this.location,
    this.name,
    this.project,
    required this.schemaId,
    this.structSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'dataStoreId': dataStoreId,
      'jsonSchema': ?jsonSchema,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'schemaId': schemaId,
      'structSchema': ?structSchema,
    };
  }

  factory SchemaDiscoveryengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return SchemaDiscoveryengineV1betaArgs(
      collectionId: pulumi.Input.fromValue(map['collectionId'] as String),
      dataStoreId: pulumi.Input.fromValue(map['dataStoreId'] as String),
      jsonSchema: (() {
        final guardedValue = map['jsonSchema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemaId: pulumi.Input.fromValue(map['schemaId'] as String),
      structSchema: (() {
        final guardedValue = map['structSchema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
