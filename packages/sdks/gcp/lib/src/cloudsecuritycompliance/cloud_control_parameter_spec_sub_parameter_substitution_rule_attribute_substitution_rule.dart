// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule {
  /// Fully qualified proto attribute path (in dot notation).
  /// Example: rules[0].cel_expression.resource_types_values
  final pulumi.Input<String>? attribute;

  /// Creates a new [CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule].
  /// [attribute] Fully qualified proto attribute path (in dot notation).
  const CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule({
    this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': ?attribute,
    };
  }

  factory CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule(
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
