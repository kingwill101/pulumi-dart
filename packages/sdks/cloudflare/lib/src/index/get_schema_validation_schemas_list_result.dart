// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSchemaValidationSchemasListResult {
  final pulumi.Input<String> createdAt;
  /// A unique identifier of this schema
  final pulumi.Input<String> id;
  /// The kind of the schema
  /// Available values: "openapiV3".
  final pulumi.Input<String> kind;
  /// A human-readable name for the schema
  final pulumi.Input<String> name;
  /// A unique identifier of this schema
  final pulumi.Input<String> schemaId;
  /// The raw schema, e.g., the OpenAPI schema, either as JSON or YAML
  final pulumi.Input<String> source;
  /// An indicator if this schema is enabled
  final pulumi.Input<bool> validationEnabled;

  /// Creates a new [GetSchemaValidationSchemasListResult].
  /// [createdAt] Required.
  /// [id] A unique identifier of this schema
  /// [kind] The kind of the schema
  /// [name] A human-readable name for the schema
  /// [schemaId] A unique identifier of this schema
  /// [source] The raw schema, e.g., the OpenAPI schema, either as JSON or YAML
  /// [validationEnabled] An indicator if this schema is enabled
  const GetSchemaValidationSchemasListResult({
    required this.createdAt,
    required this.id,
    required this.kind,
    required this.name,
    required this.schemaId,
    required this.source,
    required this.validationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'kind': kind,
      'name': name,
      'schemaId': schemaId,
      'source': source,
      'validationEnabled': validationEnabled,
    };
  }

  factory GetSchemaValidationSchemasListResult.fromMap(Map<String, dynamic> map) {
    return GetSchemaValidationSchemasListResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      schemaId: pulumi.Input.fromValue(map['schemaId'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      validationEnabled: pulumi.Input.fromValue(map['validationEnabled'] as bool),
    );
  }
}
