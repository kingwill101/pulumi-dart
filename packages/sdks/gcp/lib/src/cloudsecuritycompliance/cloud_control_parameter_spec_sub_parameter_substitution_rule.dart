// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_sub_parameter_substitution_rule_attribute_substitution_rule.dart';
import 'cloud_control_parameter_spec_sub_parameter_substitution_rule_placeholder_substitution_rule.dart';

class CloudControlParameterSpecSubParameterSubstitutionRule {
  /// Attribute at the given path is substituted entirely.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule>? attributeSubstitutionRule;
  /// Placeholder is substituted in the rendered string.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule>? placeholderSubstitutionRule;

  /// Creates a new [CloudControlParameterSpecSubParameterSubstitutionRule].
  /// [attributeSubstitutionRule] Attribute at the given path is substituted entirely.
  /// [placeholderSubstitutionRule] Placeholder is substituted in the rendered string.
  CloudControlParameterSpecSubParameterSubstitutionRule({
    this.attributeSubstitutionRule,
    this.placeholderSubstitutionRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeSubstitutionRule': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule, Map<String, dynamic>>(attributeSubstitutionRule, (value) => value.toMap()),
      'placeholderSubstitutionRule': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule, Map<String, dynamic>>(placeholderSubstitutionRule, (value) => value.toMap()),
    };
  }

  factory CloudControlParameterSpecSubParameterSubstitutionRule.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubstitutionRule(
      attributeSubstitutionRule: map['attributeSubstitutionRule'] == null ? null : (CloudControlParameterSpecSubParameterSubstitutionRuleAttributeSubstitutionRule.fromMap((map['attributeSubstitutionRule']! as Map).cast<String, dynamic>())).input(),
      placeholderSubstitutionRule: map['placeholderSubstitutionRule'] == null ? null : (CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule.fromMap((map['placeholderSubstitutionRule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

