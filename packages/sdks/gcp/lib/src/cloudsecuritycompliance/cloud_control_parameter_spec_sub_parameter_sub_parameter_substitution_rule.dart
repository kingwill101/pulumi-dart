// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_sub_parameter_sub_parameter_substitution_rule_attribute_substitution_rule.dart';
import 'cloud_control_parameter_spec_sub_parameter_sub_parameter_substitution_rule_placeholder_substitution_rule.dart';

class CloudControlParameterSpecSubParameterSubParameterSubstitutionRule {
  /// Attribute at the given path is substituted entirely.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterSubParameterSubstitutionRuleAttributeSubstitutionRule?>? attributeSubstitutionRule;
  /// Placeholder is substituted in the rendered string.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubParameterSubParameterSubstitutionRulePlaceholderSubstitutionRule?>? placeholderSubstitutionRule;

  /// Creates a new [CloudControlParameterSpecSubParameterSubParameterSubstitutionRule].
  /// [attributeSubstitutionRule] Attribute at the given path is substituted entirely.
  /// [placeholderSubstitutionRule] Placeholder is substituted in the rendered string.
  const CloudControlParameterSpecSubParameterSubParameterSubstitutionRule({
    this.attributeSubstitutionRule,
    this.placeholderSubstitutionRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeSubstitutionRule': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterSubParameterSubstitutionRuleAttributeSubstitutionRule, Map<String, dynamic>>(attributeSubstitutionRule, (value) => value.toMap()),
      'placeholderSubstitutionRule': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubParameterSubParameterSubstitutionRulePlaceholderSubstitutionRule, Map<String, dynamic>>(placeholderSubstitutionRule, (value) => value.toMap()),
    };
  }

  factory CloudControlParameterSpecSubParameterSubParameterSubstitutionRule.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubParameterSubstitutionRule(
      attributeSubstitutionRule: (() { final guardedValue = map['attributeSubstitutionRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubParameterSubParameterSubstitutionRuleAttributeSubstitutionRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      placeholderSubstitutionRule: (() { final guardedValue = map['placeholderSubstitutionRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubParameterSubParameterSubstitutionRulePlaceholderSubstitutionRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
