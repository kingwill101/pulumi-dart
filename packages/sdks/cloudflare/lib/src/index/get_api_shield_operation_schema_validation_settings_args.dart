// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_api_shield_operation_schema_validation_settings_get_api_shield_operation_schema_validation_settings_args_doc}
/// Arguments for getApiShieldOperationSchemaValidationSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_api_shield_operation_schema_validation_settings_get_api_shield_operation_schema_validation_settings_args_doc}
class GetApiShieldOperationSchemaValidationSettingsArgs {
  final pulumi.Input<String> operationId;
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetApiShieldOperationSchemaValidationSettingsArgs].
  /// [operationId] Required.
  /// [zoneId] Optional.
  const GetApiShieldOperationSchemaValidationSettingsArgs({
    required this.operationId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': operationId,
      'zoneId': ?zoneId,
    };
  }

  factory GetApiShieldOperationSchemaValidationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationSchemaValidationSettingsArgs(
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
