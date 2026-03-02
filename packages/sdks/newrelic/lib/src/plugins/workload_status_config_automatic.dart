// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_status_config_automatic_remaining_entities_rule.dart';
import 'workload_status_config_automatic_rule.dart';

class WorkloadStatusConfigAutomatic {
  /// Whether the automatic status configuration is enabled or not.
  final pulumi.Input<bool> enabled;
  /// An additional meta-rule that can consider all entities that haven't been evaluated by any other rule.
  final pulumi.Input<WorkloadStatusConfigAutomaticRemainingEntitiesRule>? remainingEntitiesRule;
  /// A list of rules.
  final pulumi.Input<List<WorkloadStatusConfigAutomaticRule>>? rules;

  /// Creates a new [WorkloadStatusConfigAutomatic].
  /// [enabled] Whether the automatic status configuration is enabled or not.
  /// [remainingEntitiesRule] An additional meta-rule that can consider all entities that haven't been evaluated by any other rule.
  /// [rules] A list of rules.
  WorkloadStatusConfigAutomatic({
    required this.enabled,
    this.remainingEntitiesRule,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'remainingEntitiesRule': ?pulumi.Input.mapOptionalInputValue<WorkloadStatusConfigAutomaticRemainingEntitiesRule, Map<String, dynamic>>(remainingEntitiesRule, (value) => value.toMap()),
      'rules': ?pulumi.Input.mapOptionalInputValue<List<WorkloadStatusConfigAutomaticRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<WorkloadStatusConfigAutomaticRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadStatusConfigAutomatic.fromMap(Map<String, dynamic> map) {
    return WorkloadStatusConfigAutomatic(
      enabled: (map['enabled'] as bool).input(),
      remainingEntitiesRule: map['remainingEntitiesRule'] == null ? null : (WorkloadStatusConfigAutomaticRemainingEntitiesRule.fromMap((map['remainingEntitiesRule']! as Map).cast<String, dynamic>())).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<WorkloadStatusConfigAutomaticRule>(map['rules']!, (value) => WorkloadStatusConfigAutomaticRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

