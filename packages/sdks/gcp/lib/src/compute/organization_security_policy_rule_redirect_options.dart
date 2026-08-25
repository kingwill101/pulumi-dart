// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationSecurityPolicyRuleRedirectOptions {
  /// Target for the redirect action. This is required if the type is EXTERNAL_302.
  final pulumi.Input<String?>? target;
  /// Type of the redirect action. For organization security policies, only EXTERNAL_302 is supported.
  final pulumi.Input<String> type;

  /// Creates a new [OrganizationSecurityPolicyRuleRedirectOptions].
  /// [target] Target for the redirect action. This is required if the type is EXTERNAL_302.
  /// [type] Type of the redirect action. For organization security policies, only EXTERNAL_302 is supported.
  const OrganizationSecurityPolicyRuleRedirectOptions({
    this.target,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
      'type': type,
    };
  }

  factory OrganizationSecurityPolicyRuleRedirectOptions.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRuleRedirectOptions(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
