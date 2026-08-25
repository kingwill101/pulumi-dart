// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationAccessPolicyDetailsRuleCondition {
  /// Textual representation of an expression in Common Expression Language
  /// syntax.
  final pulumi.Input<String?>? expression;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> service;

  /// Creates a new [OrganizationAccessPolicyDetailsRuleCondition].
  /// [expression] Textual representation of an expression in Common Expression Language
  /// [service] The identifier for this object. Format specified above.
  const OrganizationAccessPolicyDetailsRuleCondition({
    this.expression,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'service': service,
    };
  }

  factory OrganizationAccessPolicyDetailsRuleCondition.fromMap(Map<String, dynamic> map) {
    return OrganizationAccessPolicyDetailsRuleCondition(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
