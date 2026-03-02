// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boolean_condition_properties_response.dart';

/// Describes automation rule triggering logic.
class AutomationRuleTriggeringLogicResponse {
  /// The conditions to evaluate to determine if the automation rule should be triggered on a given object.
  final pulumi.Input<List<BooleanConditionPropertiesResponse>>? conditions;
  /// Determines when the automation rule should automatically expire and be disabled.
  final pulumi.Input<String>? expirationTimeUtc;
  /// Determines whether the automation rule is enabled or disabled.
  final pulumi.Input<bool> isEnabled;
  final pulumi.Input<String> triggersOn;
  final pulumi.Input<String> triggersWhen;

  /// Creates a new [AutomationRuleTriggeringLogicResponse].
  /// [conditions] The conditions to evaluate to determine if the automation rule should be triggered on a given object.
  /// [expirationTimeUtc] Determines when the automation rule should automatically expire and be disabled.
  /// [isEnabled] Determines whether the automation rule is enabled or disabled.
  /// [triggersOn] Required.
  /// [triggersWhen] Required.
  AutomationRuleTriggeringLogicResponse({
    this.conditions,
    this.expirationTimeUtc,
    required this.isEnabled,
    required this.triggersOn,
    required this.triggersWhen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<BooleanConditionPropertiesResponse>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<BooleanConditionPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'expirationTimeUtc': ?expirationTimeUtc,
      'isEnabled': isEnabled,
      'triggersOn': triggersOn,
      'triggersWhen': triggersWhen,
    };
  }

  factory AutomationRuleTriggeringLogicResponse.fromMap(Map<String, dynamic> map) {
    return AutomationRuleTriggeringLogicResponse(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<BooleanConditionPropertiesResponse>(map['conditions']!, (value) => BooleanConditionPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      expirationTimeUtc: map['expirationTimeUtc'] == null ? null : (map['expirationTimeUtc']! as String).input(),
      isEnabled: (map['isEnabled'] as bool).input(),
      triggersOn: (map['triggersOn'] as String).input(),
      triggersWhen: (map['triggersWhen'] as String).input(),
    );
  }
}

