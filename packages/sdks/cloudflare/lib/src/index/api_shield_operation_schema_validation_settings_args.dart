// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_api_shield_operation_schema_validation_settings_api_shield_operation_schema_validation_settings_args_doc}
/// The set of arguments for ApiShieldOperationSchemaValidationSettings.
/// {@endtemplate}
/// {@macro pulumi_index_api_shield_operation_schema_validation_settings_api_shield_operation_schema_validation_settings_args_doc}
class ApiShieldOperationSchemaValidationSettingsArgs {
  /// When set, this applies a mitigation action to this operation
  ///
  /// - `log` log request when request does not conform to schema for this operation
  /// - `block` deny access to the site when request does not conform to schema for this operation
  /// - `none` will skip mitigation for this operation
  /// - `null` indicates that no operation level mitigation is in place, see Zone Level Schema Validation Settings for mitigation action that will be applied
  /// Available values: "log", "block", "none".
  final pulumi.Input<String?>? mitigationAction;
  /// UUID.
  final pulumi.Input<String> operationId;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ApiShieldOperationSchemaValidationSettingsArgs].
  /// [mitigationAction] When set, this applies a mitigation action to this operation
  /// [operationId] UUID.
  /// [zoneId] Identifier.
  const ApiShieldOperationSchemaValidationSettingsArgs({
    this.mitigationAction,
    required this.operationId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mitigationAction': ?mitigationAction,
      'operationId': operationId,
      'zoneId': zoneId,
    };
  }

  factory ApiShieldOperationSchemaValidationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationSchemaValidationSettingsArgs(
      mitigationAction: (() { final guardedValue = map['mitigationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationId: pulumi.Input.fromValue(map['operationId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
