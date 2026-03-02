// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleCondition {
  /// Description of the expression
  final pulumi.Input<String>? description;
  /// Textual representation of an expression in Common Expression Language syntax.
  final pulumi.Input<String> expression;
  /// String indicating the location of the expression for error reporting, e.g. a file name and a position in the file
  final pulumi.Input<String>? location;
  /// Title for the expression, i.e. a short string describing its purpose.
  final pulumi.Input<String>? title;

  /// Creates a new [PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleCondition].
  /// [description] Description of the expression
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [location] String indicating the location of the expression for error reporting, e.g. a file name and a position in the file
  /// [title] Title for the expression, i.e. a short string describing its purpose.
  PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleCondition({
    this.description,
    required this.expression,
    this.location,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': expression,
      'location': ?location,
      'title': ?title,
    };
  }

  factory PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleCondition.fromMap(Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintOrgPolicyConstraintCustomPolicyRuleCondition(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      expression: (map['expression'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

