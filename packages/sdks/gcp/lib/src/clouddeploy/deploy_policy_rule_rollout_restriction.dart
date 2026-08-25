// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deploy_policy_rule_rollout_restriction_time_windows.dart';

class DeployPolicyRuleRolloutRestriction {
  /// Rollout actions to be restricted as part of the policy. If left empty, all actions will be restricted.
  /// Each value may be one of: `ADVANCE`, `APPROVE`, `CANCEL`, `CREATE`, `IGNORE_JOB`, `RETRY_JOB`, `ROLLBACK`, `TERMINATE_JOBRUN`.
  final pulumi.Input<List<String>?>? actions;
  /// ID of the rule. This id must be unique in the `DeployPolicy` resource to which this rule belongs. The format is `a-z{0,62}`.
  final pulumi.Input<String> id;
  /// What invoked the action. If left empty, all invoker types will be restricted.
  /// Each value may be one of: `USER`, `DEPLOY_AUTOMATION`.
  final pulumi.Input<List<String>?>? invokers;
  /// Time window within which actions are restricted.
  /// Structure is documented below.
  final pulumi.Input<DeployPolicyRuleRolloutRestrictionTimeWindows?>? timeWindows;

  /// Creates a new [DeployPolicyRuleRolloutRestriction].
  /// [actions] Rollout actions to be restricted as part of the policy. If left empty, all actions will be restricted.
  /// [id] ID of the rule. This id must be unique in the `DeployPolicy` resource to which this rule belongs. The format is `a-z{0,62}`.
  /// [invokers] What invoked the action. If left empty, all invoker types will be restricted.
  /// [timeWindows] Time window within which actions are restricted.
  const DeployPolicyRuleRolloutRestriction({
    this.actions,
    required this.id,
    this.invokers,
    this.timeWindows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'id': id,
      'invokers': ?invokers,
      'timeWindows': ?pulumi.Input.mapOptionalInputValue<DeployPolicyRuleRolloutRestrictionTimeWindows, Map<String, dynamic>>(timeWindows, (value) => value.toMap()),
    };
  }

  factory DeployPolicyRuleRolloutRestriction.fromMap(Map<String, dynamic> map) {
    return DeployPolicyRuleRolloutRestriction(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      invokers: (() { final guardedValue = map['invokers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      timeWindows: (() { final guardedValue = map['timeWindows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeployPolicyRuleRolloutRestrictionTimeWindows.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
