// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationSecurityPolicyRuleMatchExpr {
  /// Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  final pulumi.Input<String> expression;

  /// Creates a new [OrganizationSecurityPolicyRuleMatchExpr].
  /// [expression] Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  const OrganizationSecurityPolicyRuleMatchExpr({
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
    };
  }

  factory OrganizationSecurityPolicyRuleMatchExpr.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRuleMatchExpr(
      expression: pulumi.Input.fromValue(map['expression'] as String),
    );
  }
}
