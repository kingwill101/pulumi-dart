// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiShieldSchemaSchema {
  final pulumi.Input<String?>? createdAt;
  /// Kind of schema
  /// Available values: "openapiV3".
  final pulumi.Input<String?>? kind;
  /// Name of the schema
  final pulumi.Input<String?>? name;
  /// UUID.
  final pulumi.Input<String?>? schemaId;
  /// Source of the schema
  final pulumi.Input<String?>? source;
  /// Flag whether schema is enabled for validation.
  final pulumi.Input<bool?>? validationEnabled;

  /// Creates a new [ApiShieldSchemaSchema].
  /// [createdAt] Optional.
  /// [kind] Kind of schema
  /// [name] Name of the schema
  /// [schemaId] UUID.
  /// [source] Source of the schema
  /// [validationEnabled] Flag whether schema is enabled for validation.
  const ApiShieldSchemaSchema({
    this.createdAt,
    this.kind,
    this.name,
    this.schemaId,
    this.source,
    this.validationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'kind': ?kind,
      'name': ?name,
      'schemaId': ?schemaId,
      'source': ?source,
      'validationEnabled': ?validationEnabled,
    };
  }

  factory ApiShieldSchemaSchema.fromMap(Map<String, dynamic> map) {
    return ApiShieldSchemaSchema(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationEnabled: (() { final guardedValue = map['validationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
