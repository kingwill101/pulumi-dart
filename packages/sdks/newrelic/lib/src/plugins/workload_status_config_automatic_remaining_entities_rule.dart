// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_status_config_automatic_remaining_entities_rule_remaining_entities_rule_rollup.dart';

class WorkloadStatusConfigAutomaticRemainingEntitiesRule {
  /// The input object used to represent a rollup strategy.
  final pulumi.Input<WorkloadStatusConfigAutomaticRemainingEntitiesRuleRemainingEntitiesRuleRollup> remainingEntitiesRuleRollup;

  /// Creates a new [WorkloadStatusConfigAutomaticRemainingEntitiesRule].
  /// [remainingEntitiesRuleRollup] The input object used to represent a rollup strategy.
  WorkloadStatusConfigAutomaticRemainingEntitiesRule({
    required this.remainingEntitiesRuleRollup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'remainingEntitiesRuleRollup': pulumi.Input.mapInputValue<WorkloadStatusConfigAutomaticRemainingEntitiesRuleRemainingEntitiesRuleRollup, Map<String, dynamic>>(remainingEntitiesRuleRollup, (value) => value.toMap()),
    };
  }

  factory WorkloadStatusConfigAutomaticRemainingEntitiesRule.fromMap(Map<String, dynamic> map) {
    return WorkloadStatusConfigAutomaticRemainingEntitiesRule(
      remainingEntitiesRuleRollup: (WorkloadStatusConfigAutomaticRemainingEntitiesRuleRemainingEntitiesRuleRollup.fromMap((map['remainingEntitiesRuleRollup'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

