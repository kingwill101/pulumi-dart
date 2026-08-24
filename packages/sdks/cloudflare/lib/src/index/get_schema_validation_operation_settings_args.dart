// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_schema_validation_operation_settings_get_schema_validation_operation_settings_args_doc}
/// Arguments for getSchemaValidationOperationSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_schema_validation_operation_settings_get_schema_validation_operation_settings_args_doc}
class GetSchemaValidationOperationSettingsArgs {
  final pulumi.Input<String> operationId;
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetSchemaValidationOperationSettingsArgs].
  /// [operationId] Required.
  /// [zoneId] Optional.
  const GetSchemaValidationOperationSettingsArgs({
    required this.operationId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationId': operationId,
      'zoneId': ?zoneId,
    };
  }

  factory GetSchemaValidationOperationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaValidationOperationSettingsArgs(
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
