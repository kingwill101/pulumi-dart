// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiShieldSchemaValidationSettings resources.
class ApiShieldSchemaValidationSettingsState {
  /// The default mitigation action used when there is no mitigation action defined on the operation
  final pulumi.Input<String?>? validationDefaultMitigationAction;
  /// When set, this overrides both zone level and operation level mitigation actions.
  ///
  /// - `none` will skip running schema validation entirely for the request
  /// - `null` indicates that no override is in place
  ///
  /// To clear any override, use the special value `disableOverride` or `null`
  /// Available values: "none", "disableOverride".
  final pulumi.Input<String?>? validationOverrideMitigationAction;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ApiShieldSchemaValidationSettingsState].
  /// [validationDefaultMitigationAction] The default mitigation action used when there is no mitigation action defined on the operation
  /// [validationOverrideMitigationAction] When set, this overrides both zone level and operation level mitigation actions.
  /// [zoneId] Identifier.
  const ApiShieldSchemaValidationSettingsState({
    this.validationDefaultMitigationAction,
    this.validationOverrideMitigationAction,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validationDefaultMitigationAction': ?validationDefaultMitigationAction,
      'validationOverrideMitigationAction': ?validationOverrideMitigationAction,
      'zoneId': ?zoneId,
    };
  }

  factory ApiShieldSchemaValidationSettingsState.fromMap(Map<String, dynamic> map) {
    return ApiShieldSchemaValidationSettingsState(
      validationDefaultMitigationAction: (() { final guardedValue = map['validationDefaultMitigationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationOverrideMitigationAction: (() { final guardedValue = map['validationOverrideMitigationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
