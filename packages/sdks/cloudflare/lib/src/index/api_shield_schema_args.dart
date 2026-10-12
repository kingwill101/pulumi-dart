// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_api_shield_schema_api_shield_schema_args_doc}
/// The set of arguments for ApiShieldSchema.
/// {@endtemplate}
/// {@macro pulumi_index_api_shield_schema_api_shield_schema_args_doc}
class ApiShieldSchemaArgs {
  /// Schema file bytes
  final pulumi.Input<String> file;
  /// Kind of schema
  /// Available values: "openapiV3".
  final pulumi.Input<String> kind;
  /// Name of the schema
  final pulumi.Input<String?>? name;
  /// Omit the source-files of schemas and only retrieve their meta-data.
  final pulumi.Input<bool?>? omitSource;
  final pulumi.Input<String?>? schemaId;
  /// Flag whether schema is enabled for validation.
  /// Available values: "true", "false".
  final pulumi.Input<String?>? validationEnabled;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ApiShieldSchemaArgs].
  /// [file] Schema file bytes
  /// [kind] Kind of schema
  /// [name] Name of the schema
  /// [omitSource] Omit the source-files of schemas and only retrieve their meta-data.
  /// [schemaId] Optional.
  /// [validationEnabled] Flag whether schema is enabled for validation.
  /// [zoneId] Identifier.
  const ApiShieldSchemaArgs({
    required this.file,
    required this.kind,
    this.name,
    this.omitSource,
    this.schemaId,
    this.validationEnabled,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
      'kind': kind,
      'name': ?name,
      'omitSource': ?omitSource,
      'schemaId': ?schemaId,
      'validationEnabled': ?validationEnabled,
      'zoneId': zoneId,
    };
  }

  factory ApiShieldSchemaArgs.fromMap(Map<String, dynamic> map) {
    return ApiShieldSchemaArgs(
      file: pulumi.Input.fromValue(map['file'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      omitSource: (() { final guardedValue = map['omitSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationEnabled: (() { final guardedValue = map['validationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
