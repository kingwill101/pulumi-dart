// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deny_policy_rule_deny_rule.dart';

class DenyPolicyRule {
  /// A deny rule in an IAM deny policy.
  /// Structure is documented below.
  final pulumi.Input<DenyPolicyRuleDenyRule>? denyRule;
  /// The description of the rule.
  final pulumi.Input<String>? description;

  /// Creates a new [DenyPolicyRule].
  /// [denyRule] A deny rule in an IAM deny policy.
  /// [description] The description of the rule.
  DenyPolicyRule({
    this.denyRule,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denyRule': ?pulumi.Input.mapOptionalInputValue<DenyPolicyRuleDenyRule, Map<String, dynamic>>(denyRule, (value) => value.toMap()),
      'description': ?description,
    };
  }

  factory DenyPolicyRule.fromMap(Map<String, dynamic> map) {
    return DenyPolicyRule(
      denyRule: map['denyRule'] == null ? null : (DenyPolicyRuleDenyRule.fromMap((map['denyRule']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
    );
  }
}

