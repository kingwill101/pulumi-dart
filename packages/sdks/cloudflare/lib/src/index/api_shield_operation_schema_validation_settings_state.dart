// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiShieldOperationSchemaValidationSettings resources.
class ApiShieldOperationSchemaValidationSettingsState {
  /// When set, this applies a mitigation action to this operation
  ///
  /// - `log` log request when request does not conform to schema for this operation
  /// - `block` deny access to the site when request does not conform to schema for this operation
  /// - `none` will skip mitigation for this operation
  /// - `null` indicates that no operation level mitigation is in place, see Zone Level Schema Validation Settings for mitigation action that will be applied
  /// Available values: "log", "block", "none".
  final pulumi.Input<String?>? mitigationAction;
  /// UUID.
  final pulumi.Input<String?>? operationId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ApiShieldOperationSchemaValidationSettingsState].
  /// [mitigationAction] When set, this applies a mitigation action to this operation
  /// [operationId] UUID.
  /// [zoneId] Identifier.
  const ApiShieldOperationSchemaValidationSettingsState({
    this.mitigationAction,
    this.operationId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mitigationAction': ?mitigationAction,
      'operationId': ?operationId,
      'zoneId': ?zoneId,
    };
  }

  factory ApiShieldOperationSchemaValidationSettingsState.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationSchemaValidationSettingsState(
      mitigationAction: (() { final guardedValue = map['mitigationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
