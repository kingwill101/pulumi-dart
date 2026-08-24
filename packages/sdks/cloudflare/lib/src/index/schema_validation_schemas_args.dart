// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_schema_validation_schemas_schema_validation_schemas_args_doc}
/// The set of arguments for SchemaValidationSchemas.
/// {@endtemplate}
/// {@macro pulumi_index_schema_validation_schemas_schema_validation_schemas_args_doc}
class SchemaValidationSchemasArgs {
  /// The kind of the schema
  /// Available values: "openapiV3".
  final pulumi.Input<String> kind;
  /// A human-readable name for the schema
  final pulumi.Input<String> name;
  /// The raw schema, e.g., the OpenAPI schema, either as JSON or YAML
  final pulumi.Input<String> source;
  /// An indicator if this schema is enabled
  final pulumi.Input<bool> validationEnabled;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [SchemaValidationSchemasArgs].
  /// [kind] The kind of the schema
  /// [name] A human-readable name for the schema
  /// [source] The raw schema, e.g., the OpenAPI schema, either as JSON or YAML
  /// [validationEnabled] An indicator if this schema is enabled
  /// [zoneId] Identifier.
  const SchemaValidationSchemasArgs({
    required this.kind,
    required this.name,
    required this.source,
    required this.validationEnabled,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'name': name,
      'source': source,
      'validationEnabled': validationEnabled,
      'zoneId': zoneId,
    };
  }

  factory SchemaValidationSchemasArgs.fromMap(Map<String, dynamic> map) {
    return SchemaValidationSchemasArgs(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      validationEnabled: pulumi.Input.fromValue(map['validationEnabled'] as bool),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
