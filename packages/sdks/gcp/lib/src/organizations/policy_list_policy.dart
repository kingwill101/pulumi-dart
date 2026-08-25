// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_list_policy_allow.dart';
import 'policy_list_policy_deny.dart';

class PolicyListPolicy {
  /// or `deny` - (Optional) One or the other must be set.
  final pulumi.Input<PolicyListPolicyAllow?>? allow;
  /// One or the other must be set.
  final pulumi.Input<PolicyListPolicyDeny?>? deny;
  /// If set to true, the values from the effective Policy of the parent resource
  /// are inherited, meaning the values set in this Policy are added to the values inherited up the hierarchy.
  ///
  /// The `allow` or `deny` blocks support:
  final pulumi.Input<bool?>? inheritFromParent;
  /// The Google Cloud Console will try to default to a configuration that matches the value specified in this field.
  final pulumi.Input<String?>? suggestedValue;

  /// Creates a new [PolicyListPolicy].
  /// [allow] or `deny` - (Optional) One or the other must be set.
  /// [deny] One or the other must be set.
  /// [inheritFromParent] If set to true, the values from the effective Policy of the parent resource
  /// [suggestedValue] The Google Cloud Console will try to default to a configuration that matches the value specified in this field.
  const PolicyListPolicy({
    this.allow,
    this.deny,
    this.inheritFromParent,
    this.suggestedValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?pulumi.Input.mapOptionalInputValue<PolicyListPolicyAllow, Map<String, dynamic>>(allow, (value) => value.toMap()),
      'deny': ?pulumi.Input.mapOptionalInputValue<PolicyListPolicyDeny, Map<String, dynamic>>(deny, (value) => value.toMap()),
      'inheritFromParent': ?inheritFromParent,
      'suggestedValue': ?suggestedValue,
    };
  }

  factory PolicyListPolicy.fromMap(Map<String, dynamic> map) {
    return PolicyListPolicy(
      allow: (() { final guardedValue = map['allow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyListPolicyAllow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deny: (() { final guardedValue = map['deny']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyListPolicyDeny.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inheritFromParent: (() { final guardedValue = map['inheritFromParent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      suggestedValue: (() { final guardedValue = map['suggestedValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
