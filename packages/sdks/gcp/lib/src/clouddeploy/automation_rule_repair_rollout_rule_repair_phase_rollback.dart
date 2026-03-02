// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleRepairRolloutRuleRepairPhaseRollback {
  /// Optional. The starting phase ID for the Rollout. If unspecified, the Rollout will start in the stable phase.
  final pulumi.Input<String>? destinationPhase;
  /// Optional. If pending rollout exists on the target, the rollback operation will be aborted.
  final pulumi.Input<bool>? disableRollbackIfRolloutPending;

  /// Creates a new [AutomationRuleRepairRolloutRuleRepairPhaseRollback].
  /// [destinationPhase] Optional. The starting phase ID for the Rollout. If unspecified, the Rollout will start in the stable phase.
  /// [disableRollbackIfRolloutPending] Optional. If pending rollout exists on the target, the rollback operation will be aborted.
  AutomationRuleRepairRolloutRuleRepairPhaseRollback({
    this.destinationPhase,
    this.disableRollbackIfRolloutPending,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPhase': ?destinationPhase,
      'disableRollbackIfRolloutPending': ?disableRollbackIfRolloutPending,
    };
  }

  factory AutomationRuleRepairRolloutRuleRepairPhaseRollback.fromMap(Map<String, dynamic> map) {
    return AutomationRuleRepairRolloutRuleRepairPhaseRollback(
      destinationPhase: map['destinationPhase'] == null ? null : (map['destinationPhase']! as String).input(),
      disableRollbackIfRolloutPending: map['disableRollbackIfRolloutPending'] == null ? null : (map['disableRollbackIfRolloutPending']! as bool).input(),
    );
  }
}

