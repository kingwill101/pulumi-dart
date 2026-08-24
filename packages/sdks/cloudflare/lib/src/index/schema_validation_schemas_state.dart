// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SchemaValidationSchemas resources.
class SchemaValidationSchemasState {
  final pulumi.Input<String?>? createdAt;
  /// The kind of the schema
  /// Available values: "openapiV3".
  final pulumi.Input<String?>? kind;
  /// A human-readable name for the schema
  final pulumi.Input<String?>? name;
  /// A unique identifier of this schema
  final pulumi.Input<String?>? schemaId;
  /// The raw schema, e.g., the OpenAPI schema, either as JSON or YAML
  final pulumi.Input<String?>? source;
  /// An indicator if this schema is enabled
  final pulumi.Input<bool?>? validationEnabled;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [SchemaValidationSchemasState].
  /// [createdAt] Optional.
  /// [kind] The kind of the schema
  /// [name] A human-readable name for the schema
  /// [schemaId] A unique identifier of this schema
  /// [source] The raw schema, e.g., the OpenAPI schema, either as JSON or YAML
  /// [validationEnabled] An indicator if this schema is enabled
  /// [zoneId] Identifier.
  const SchemaValidationSchemasState({
    this.createdAt,
    this.kind,
    this.name,
    this.schemaId,
    this.source,
    this.validationEnabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'kind': ?kind,
      'name': ?name,
      'schemaId': ?schemaId,
      'source': ?source,
      'validationEnabled': ?validationEnabled,
      'zoneId': ?zoneId,
    };
  }

  factory SchemaValidationSchemasState.fromMap(Map<String, dynamic> map) {
    return SchemaValidationSchemasState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationEnabled: (() { final guardedValue = map['validationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
