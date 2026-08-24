// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_api_shield_schema_get_api_shield_schema_args_doc}
/// Arguments for getApiShieldSchema.
/// {@endtemplate}
/// {@macro pulumi_index_get_api_shield_schema_get_api_shield_schema_args_doc}
class GetApiShieldSchemaArgs {
  /// Omit the source-files of schemas and only retrieve their meta-data.
  final pulumi.Input<bool?>? omitSource;
  final pulumi.Input<String> schemaId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetApiShieldSchemaArgs].
  /// [omitSource] Omit the source-files of schemas and only retrieve their meta-data.
  /// [schemaId] Required.
  /// [zoneId] Identifier.
  const GetApiShieldSchemaArgs({
    this.omitSource,
    required this.schemaId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'omitSource': ?omitSource,
      'schemaId': schemaId,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldSchemaArgs.fromMap(Map<String, dynamic> map) {
    return GetApiShieldSchemaArgs(
      omitSource: (() { final guardedValue = map['omitSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schemaId: pulumi.Input.fromValue(map['schemaId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
