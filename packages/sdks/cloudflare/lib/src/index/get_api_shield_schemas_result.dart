// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiShieldSchemasResult {
  final pulumi.Input<String> createdAt;
  /// Kind of schema
  /// Available values: "openapiV3".
  final pulumi.Input<String> kind;
  /// Name of the schema
  final pulumi.Input<String> name;
  /// UUID.
  final pulumi.Input<String> schemaId;
  /// Source of the schema
  final pulumi.Input<String> source;
  /// Flag whether schema is enabled for validation.
  final pulumi.Input<bool> validationEnabled;

  /// Creates a new [GetApiShieldSchemasResult].
  /// [createdAt] Required.
  /// [kind] Kind of schema
  /// [name] Name of the schema
  /// [schemaId] UUID.
  /// [source] Source of the schema
  /// [validationEnabled] Flag whether schema is enabled for validation.
  const GetApiShieldSchemasResult({
    required this.createdAt,
    required this.kind,
    required this.name,
    required this.schemaId,
    required this.source,
    required this.validationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'kind': kind,
      'name': name,
      'schemaId': schemaId,
      'source': source,
      'validationEnabled': validationEnabled,
    };
  }

  factory GetApiShieldSchemasResult.fromMap(Map<String, dynamic> map) {
    return GetApiShieldSchemasResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      schemaId: pulumi.Input.fromValue(map['schemaId'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      validationEnabled: pulumi.Input.fromValue(map['validationEnabled'] as bool),
    );
  }
}
