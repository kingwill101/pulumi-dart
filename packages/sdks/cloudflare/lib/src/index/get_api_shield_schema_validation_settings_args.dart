// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_api_shield_schema_validation_settings_get_api_shield_schema_validation_settings_args_doc}
/// Arguments for getApiShieldSchemaValidationSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_api_shield_schema_validation_settings_get_api_shield_schema_validation_settings_args_doc}
class GetApiShieldSchemaValidationSettingsArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetApiShieldSchemaValidationSettingsArgs].
  /// [zoneId] Identifier.
  const GetApiShieldSchemaValidationSettingsArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldSchemaValidationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetApiShieldSchemaValidationSettingsArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
