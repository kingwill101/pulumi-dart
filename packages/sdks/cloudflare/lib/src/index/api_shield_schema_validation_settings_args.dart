// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_api_shield_schema_validation_settings_api_shield_schema_validation_settings_args_doc}
/// The set of arguments for ApiShieldSchemaValidationSettings.
/// {@endtemplate}
/// {@macro pulumi_index_api_shield_schema_validation_settings_api_shield_schema_validation_settings_args_doc}
class ApiShieldSchemaValidationSettingsArgs {
  /// The default mitigation action used when there is no mitigation action defined on the operation
  final pulumi.Input<String> validationDefaultMitigationAction;
  /// When set, this overrides both zone level and operation level mitigation actions.
  ///
  /// - `none` will skip running schema validation entirely for the request
  /// - `null` indicates that no override is in place
  ///
  /// To clear any override, use the special value `disableOverride` or `null`
  /// Available values: "none", "disableOverride".
  final pulumi.Input<String?>? validationOverrideMitigationAction;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ApiShieldSchemaValidationSettingsArgs].
  /// [validationDefaultMitigationAction] The default mitigation action used when there is no mitigation action defined on the operation
  /// [validationOverrideMitigationAction] When set, this overrides both zone level and operation level mitigation actions.
  /// [zoneId] Identifier.
  const ApiShieldSchemaValidationSettingsArgs({
    required this.validationDefaultMitigationAction,
    this.validationOverrideMitigationAction,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validationDefaultMitigationAction': validationDefaultMitigationAction,
      'validationOverrideMitigationAction': ?validationOverrideMitigationAction,
      'zoneId': zoneId,
    };
  }

  factory ApiShieldSchemaValidationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return ApiShieldSchemaValidationSettingsArgs(
      validationDefaultMitigationAction: pulumi.Input.fromValue(map['validationDefaultMitigationAction'] as String),
      validationOverrideMitigationAction: (() { final guardedValue = map['validationOverrideMitigationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
