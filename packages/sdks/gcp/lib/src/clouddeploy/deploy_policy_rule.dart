// ignore_for_file: unused_element, unnecessary_cast

import 'deploy_policy_rule_rollout_restriction.dart';

class DeployPolicyRule {
  /// Rollout restrictions.
  /// Structure is documented below.
  final DeployPolicyRuleRolloutRestriction? rolloutRestriction;

  /// Creates a new [DeployPolicyRule].
  /// [rolloutRestriction] Rollout restrictions.
  DeployPolicyRule({
    this.rolloutRestriction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rolloutRestriction': ?rolloutRestriction == null ? null : rolloutRestriction!.toMap(),
    };
  }

  factory DeployPolicyRule.fromMap(Map<String, dynamic> map) {
    return DeployPolicyRule(
      rolloutRestriction: map['rolloutRestriction'] == null ? null : DeployPolicyRuleRolloutRestriction.fromMap((map['rolloutRestriction'] as Map).cast<String, dynamic>()),
    );
  }
}

