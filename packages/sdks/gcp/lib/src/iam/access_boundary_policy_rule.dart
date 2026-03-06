// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_boundary_policy_rule_access_boundary_rule.dart';

class AccessBoundaryPolicyRule {
  /// An access boundary rule in an IAM policy.
  /// Structure is documented below.
  final pulumi.Input<AccessBoundaryPolicyRuleAccessBoundaryRule>? accessBoundaryRule;
  /// The description of the rule.
  final pulumi.Input<String>? description;

  /// Creates a new [AccessBoundaryPolicyRule].
  /// [accessBoundaryRule] An access boundary rule in an IAM policy.
  /// [description] The description of the rule.
  const AccessBoundaryPolicyRule({
    this.accessBoundaryRule,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessBoundaryRule': ?pulumi.Input.mapOptionalInputValue<AccessBoundaryPolicyRuleAccessBoundaryRule, Map<String, dynamic>>(accessBoundaryRule, (value) => value.toMap()),
      'description': ?description,
    };
  }

  factory AccessBoundaryPolicyRule.fromMap(Map<String, dynamic> map) {
    return AccessBoundaryPolicyRule(
      accessBoundaryRule: (() { final guardedValue = map['accessBoundaryRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessBoundaryPolicyRuleAccessBoundaryRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

