// ignore_for_file: unused_element, unnecessary_cast

import 'deny_policy_rule_deny_rule.dart';

class DenyPolicyRule {
  /// A deny rule in an IAM deny policy.
  /// Structure is documented below.
  final DenyPolicyRuleDenyRule? denyRule;
  /// The description of the rule.
  final String? description;

  /// Creates a new [DenyPolicyRule].
  /// [denyRule] A deny rule in an IAM deny policy.
  /// [description] The description of the rule.
  DenyPolicyRule({
    this.denyRule,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denyRule': ?denyRule == null ? null : denyRule!.toMap(),
      'description': ?description,
    };
  }

  factory DenyPolicyRule.fromMap(Map<String, dynamic> map) {
    return DenyPolicyRule(
      denyRule: map['denyRule'] == null ? null : DenyPolicyRuleDenyRule.fromMap((map['denyRule'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}

