// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAclPolicyRule {
  /// The rule to be applied to the username. Ex: "on &gt;password123 ~* +@all"
  /// The format of the rule is defined by Redis OSS:
  /// https://redis.io/docs/latest/operate/oss_and_stack/management/security/acl/
  final pulumi.Input<String> rule;
  /// Specifies the IAM user or service account to be added to the ACL policy.
  /// This username will be directly set on the Redis OSS.
  final pulumi.Input<String> username;

  /// Creates a new [GetClusterAclPolicyRule].
  /// [rule] The rule to be applied to the username. Ex: "on &gt;password123 ~* +@all"
  /// [username] Specifies the IAM user or service account to be added to the ACL policy.
  const GetClusterAclPolicyRule({
    required this.rule,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rule': rule,
      'username': username,
    };
  }

  factory GetClusterAclPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetClusterAclPolicyRule(
      rule: pulumi.Input.fromValue(map['rule'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
