// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyRuleMatchExpr {
  /// Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  final pulumi.Input<String> expression;

  /// Creates a new [SecurityPolicyRuleMatchExpr].
  /// [expression] Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.
  SecurityPolicyRuleMatchExpr({
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
    };
  }

  factory SecurityPolicyRuleMatchExpr.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatchExpr(
      expression: pulumi.Input.fromValue(map['expression'] as String),
    );
  }
}

