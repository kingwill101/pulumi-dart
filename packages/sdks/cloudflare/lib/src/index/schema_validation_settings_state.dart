// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SchemaValidationSettings resources.
class SchemaValidationSettingsState {
  /// The default mitigation action used
  /// Mitigation actions are as follows:
  ///
  /// - `"log"` - log request when request does not conform to schema
  /// - `"block"` - deny access to the site when request does not conform to schema
  /// - `"none"` - skip running schema validation
  /// Available values: "none", "log", "block".
  final pulumi.Input<String?>? validationDefaultMitigationAction;
  /// When set, this overrides both zone level and operation level mitigation actions.
  ///
  /// - `"none"` - skip running schema validation entirely for the request
  /// - `null` - clears any existing override
  /// Available values: "none".
  final pulumi.Input<String?>? validationOverrideMitigationAction;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [SchemaValidationSettingsState].
  /// [validationDefaultMitigationAction] The default mitigation action used
  /// [validationOverrideMitigationAction] When set, this overrides both zone level and operation level mitigation actions.
  /// [zoneId] Identifier.
  const SchemaValidationSettingsState({
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

  factory SchemaValidationSettingsState.fromMap(Map<String, dynamic> map) {
    return SchemaValidationSettingsState(
      validationDefaultMitigationAction: (() { final guardedValue = map['validationDefaultMitigationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationOverrideMitigationAction: (() { final guardedValue = map['validationOverrideMitigationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
