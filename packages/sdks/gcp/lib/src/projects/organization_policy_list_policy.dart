// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_policy_list_policy_allow.dart';
import 'organization_policy_list_policy_deny.dart';

class OrganizationPolicyListPolicy {
  /// or `deny` - (Optional) One or the other must be set.
  final pulumi.Input<OrganizationPolicyListPolicyAllow>? allow;
  /// One or the other must be set.
  final pulumi.Input<OrganizationPolicyListPolicyDeny>? deny;
  /// If set to true, the values from the effective Policy of the parent resource
  /// are inherited, meaning the values set in this Policy are added to the values inherited up the hierarchy.
  ///
  /// The `allow` or `deny` blocks support:
  final pulumi.Input<bool>? inheritFromParent;
  /// The Google Cloud Console will try to default to a configuration that matches the value specified in this field.
  final pulumi.Input<String>? suggestedValue;

  /// Creates a new [OrganizationPolicyListPolicy].
  /// [allow] or `deny` - (Optional) One or the other must be set.
  /// [deny] One or the other must be set.
  /// [inheritFromParent] If set to true, the values from the effective Policy of the parent resource
  /// [suggestedValue] The Google Cloud Console will try to default to a configuration that matches the value specified in this field.
  const OrganizationPolicyListPolicy({
    this.allow,
    this.deny,
    this.inheritFromParent,
    this.suggestedValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?pulumi.Input.mapOptionalInputValue<OrganizationPolicyListPolicyAllow, Map<String, dynamic>>(allow, (value) => value.toMap()),
      'deny': ?pulumi.Input.mapOptionalInputValue<OrganizationPolicyListPolicyDeny, Map<String, dynamic>>(deny, (value) => value.toMap()),
      'inheritFromParent': ?inheritFromParent,
      'suggestedValue': ?suggestedValue,
    };
  }

  factory OrganizationPolicyListPolicy.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyListPolicy(
      allow: (() { final guardedValue = map['allow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationPolicyListPolicyAllow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deny: (() { final guardedValue = map['deny']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationPolicyListPolicyDeny.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inheritFromParent: (() { final guardedValue = map['inheritFromParent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      suggestedValue: (() { final guardedValue = map['suggestedValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

