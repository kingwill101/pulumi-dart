// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_repair_rollout_rule_repair_phase_retry.dart';
import 'automation_rule_repair_rollout_rule_repair_phase_rollback.dart';

class AutomationRuleRepairRolloutRuleRepairPhase {
  /// Optional. Retries a failed job.
  /// Structure is documented below.
  final pulumi.Input<AutomationRuleRepairRolloutRuleRepairPhaseRetry>? retry;
  /// Optional. Rolls back a Rollout.
  /// Structure is documented below.
  final pulumi.Input<AutomationRuleRepairRolloutRuleRepairPhaseRollback>? rollback;

  /// Creates a new [AutomationRuleRepairRolloutRuleRepairPhase].
  /// [retry] Optional. Retries a failed job.
  /// [rollback] Optional. Rolls back a Rollout.
  const AutomationRuleRepairRolloutRuleRepairPhase({
    this.retry,
    this.rollback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retry': ?pulumi.Input.mapOptionalInputValue<AutomationRuleRepairRolloutRuleRepairPhaseRetry, Map<String, dynamic>>(retry, (value) => value.toMap()),
      'rollback': ?pulumi.Input.mapOptionalInputValue<AutomationRuleRepairRolloutRuleRepairPhaseRollback, Map<String, dynamic>>(rollback, (value) => value.toMap()),
    };
  }

  factory AutomationRuleRepairRolloutRuleRepairPhase.fromMap(Map<String, dynamic> map) {
    return AutomationRuleRepairRolloutRuleRepairPhase(
      retry: (() { final guardedValue = map['retry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleRepairRolloutRuleRepairPhaseRetry.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rollback: (() { final guardedValue = map['rollback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomationRuleRepairRolloutRuleRepairPhaseRollback.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
