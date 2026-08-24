// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_api_shield_schemas_get_api_shield_schemas_args_doc}
/// Arguments for getApiShieldSchemas.
/// {@endtemplate}
/// {@macro pulumi_index_get_api_shield_schemas_get_api_shield_schemas_args_doc}
class GetApiShieldSchemasArgs {
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Omit the source-files of schemas and only retrieve their meta-data.
  final pulumi.Input<bool?>? omitSource;
  /// Flag whether schema is enabled for validation.
  final pulumi.Input<bool?>? validationEnabled;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetApiShieldSchemasArgs].
  /// [maxItems] Max items to fetch, default: 1000
  /// [omitSource] Omit the source-files of schemas and only retrieve their meta-data.
  /// [validationEnabled] Flag whether schema is enabled for validation.
  /// [zoneId] Identifier.
  const GetApiShieldSchemasArgs({
    this.maxItems,
    this.omitSource,
    this.validationEnabled,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'omitSource': ?omitSource,
      'validationEnabled': ?validationEnabled,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldSchemasArgs.fromMap(Map<String, dynamic> map) {
    return GetApiShieldSchemasArgs(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      omitSource: (() { final guardedValue = map['omitSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validationEnabled: (() { final guardedValue = map['validationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
