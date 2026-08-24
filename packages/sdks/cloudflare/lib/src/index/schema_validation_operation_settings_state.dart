// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SchemaValidationOperationSettings resources.
class SchemaValidationOperationSettingsState {
  /// When set, this applies a mitigation action to this operation
  ///
  /// - `"log"` - log request when request does not conform to schema for this operation
  /// - `"block"` - deny access to the site when request does not conform to schema for this operation
  /// - `"none"` - will skip mitigation for this operation
  /// - `null` - clears any mitigation action
  /// Available values: "log", "block", "none".
  final pulumi.Input<String?>? mitigationAction;
  /// UUID.
  final pulumi.Input<String?>? operationId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [SchemaValidationOperationSettingsState].
  /// [mitigationAction] When set, this applies a mitigation action to this operation
  /// [operationId] UUID.
  /// [zoneId] Identifier.
  const SchemaValidationOperationSettingsState({
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

  factory SchemaValidationOperationSettingsState.fromMap(Map<String, dynamic> map) {
    return SchemaValidationOperationSettingsState(
      mitigationAction: (() { final guardedValue = map['mitigationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationId: (() { final guardedValue = map['operationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
