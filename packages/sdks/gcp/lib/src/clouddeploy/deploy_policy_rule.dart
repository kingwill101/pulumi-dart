// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deploy_policy_rule_rollout_restriction.dart';

class DeployPolicyRule {
  /// Rollout restrictions.
  /// Structure is documented below.
  final pulumi.Input<DeployPolicyRuleRolloutRestriction?>? rolloutRestriction;

  /// Creates a new [DeployPolicyRule].
  /// [rolloutRestriction] Rollout restrictions.
  const DeployPolicyRule({
    this.rolloutRestriction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rolloutRestriction': ?pulumi.Input.mapOptionalInputValue<DeployPolicyRuleRolloutRestriction, Map<String, dynamic>>(rolloutRestriction, (value) => value.toMap()),
    };
  }

  factory DeployPolicyRule.fromMap(Map<String, dynamic> map) {
    return DeployPolicyRule(
      rolloutRestriction: (() { final guardedValue = map['rolloutRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeployPolicyRuleRolloutRestriction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
