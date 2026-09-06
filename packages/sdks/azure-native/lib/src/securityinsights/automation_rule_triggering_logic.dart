// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes automation rule triggering logic.
class AutomationRuleTriggeringLogic {
  /// The conditions to evaluate to determine if the automation rule should be triggered on a given object.
  final pulumi.Input<List<dynamic>?>? conditions;
  /// Determines when the automation rule should automatically expire and be disabled.
  final pulumi.Input<String?>? expirationTimeUtc;
  /// Determines whether the automation rule is enabled or disabled.
  final pulumi.Input<bool> isEnabled;
  final pulumi.Input<dynamic> triggersOn;
  final pulumi.Input<dynamic> triggersWhen;

  /// Creates a new [AutomationRuleTriggeringLogic].
  /// [conditions] The conditions to evaluate to determine if the automation rule should be triggered on a given object.
  /// [expirationTimeUtc] Determines when the automation rule should automatically expire and be disabled.
  /// [isEnabled] Determines whether the automation rule is enabled or disabled.
  /// [triggersOn] Required.
  /// [triggersWhen] Required.
  const AutomationRuleTriggeringLogic({
    this.conditions,
    this.expirationTimeUtc,
    required this.isEnabled,
    required this.triggersOn,
    required this.triggersWhen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions,
      'expirationTimeUtc': ?expirationTimeUtc,
      'isEnabled': isEnabled,
      'triggersOn': triggersOn,
      'triggersWhen': triggersWhen,
    };
  }

  factory AutomationRuleTriggeringLogic.fromMap(Map<String, dynamic> map) {
    return AutomationRuleTriggeringLogic(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      expirationTimeUtc: (() { final guardedValue = map['expirationTimeUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      triggersOn: pulumi.Input.fromValue(map['triggersOn']),
      triggersWhen: pulumi.Input.fromValue(map['triggersWhen']),
    );
  }
}
