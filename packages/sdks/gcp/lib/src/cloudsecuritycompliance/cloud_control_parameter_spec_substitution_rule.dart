// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_control_parameter_spec_substitution_rule_attribute_substitution_rule.dart';
import 'cloud_control_parameter_spec_substitution_rule_placeholder_substitution_rule.dart';

class CloudControlParameterSpecSubstitutionRule {
  /// Attribute at the given path is substituted entirely.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRule>? attributeSubstitutionRule;
  /// Placeholder is substituted in the rendered string.
  /// Structure is documented below.
  final pulumi.Input<CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule>? placeholderSubstitutionRule;

  /// Creates a new [CloudControlParameterSpecSubstitutionRule].
  /// [attributeSubstitutionRule] Attribute at the given path is substituted entirely.
  /// [placeholderSubstitutionRule] Placeholder is substituted in the rendered string.
  const CloudControlParameterSpecSubstitutionRule({
    this.attributeSubstitutionRule,
    this.placeholderSubstitutionRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeSubstitutionRule': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRule, Map<String, dynamic>>(attributeSubstitutionRule, (value) => value.toMap()),
      'placeholderSubstitutionRule': ?pulumi.Input.mapOptionalInputValue<CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule, Map<String, dynamic>>(placeholderSubstitutionRule, (value) => value.toMap()),
    };
  }

  factory CloudControlParameterSpecSubstitutionRule.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubstitutionRule(
      attributeSubstitutionRule: (() { final guardedValue = map['attributeSubstitutionRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubstitutionRuleAttributeSubstitutionRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      placeholderSubstitutionRule: (() { final guardedValue = map['placeholderSubstitutionRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
