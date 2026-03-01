// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boolean_condition_properties.dart';

/// Describes automation rule triggering logic.
class AutomationRuleTriggeringLogic {
  /// The conditions to evaluate to determine if the automation rule should be triggered on a given object.
  final List<BooleanConditionProperties>? conditions;
  /// Determines when the automation rule should automatically expire and be disabled.
  final String? expirationTimeUtc;
  /// Determines whether the automation rule is enabled or disabled.
  final bool isEnabled;
  final String triggersOn;
  final String triggersWhen;

  /// Creates a new [AutomationRuleTriggeringLogic].
  /// [conditions] The conditions to evaluate to determine if the automation rule should be triggered on a given object.
  /// [expirationTimeUtc] Determines when the automation rule should automatically expire and be disabled.
  /// [isEnabled] Determines whether the automation rule is enabled or disabled.
  /// [triggersOn] Required.
  /// [triggersWhen] Required.
  AutomationRuleTriggeringLogic({
    this.conditions,
    this.expirationTimeUtc,
    required this.isEnabled,
    required this.triggersOn,
    required this.triggersWhen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<BooleanConditionProperties, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'expirationTimeUtc': ?expirationTimeUtc,
      'isEnabled': isEnabled,
      'triggersOn': triggersOn,
      'triggersWhen': triggersWhen,
    };
  }

  factory AutomationRuleTriggeringLogic.fromMap(Map<String, dynamic> map) {
    return AutomationRuleTriggeringLogic(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<BooleanConditionProperties>(map['conditions'], (value) => BooleanConditionProperties.fromMap((value as Map).cast<String, dynamic>())),
      expirationTimeUtc: map['expirationTimeUtc'] == null ? null : map['expirationTimeUtc'] as String,
      isEnabled: map['isEnabled'] as bool,
      triggersOn: map['triggersOn'] as String,
      triggersWhen: map['triggersWhen'] as String,
    );
  }
}

