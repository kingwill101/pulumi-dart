// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule {
  /// Fully qualified proto attribute path (e.g., dot notation)
  final pulumi.Input<String>? attribute;

  /// Creates a new [CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule].
  /// [attribute] Fully qualified proto attribute path (e.g., dot notation)
  CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule({
    this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': ?attribute,
    };
  }

  factory CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubParameterSubstitutionRulePlaceholderSubstitutionRule(
      attribute: map['attribute'] == null ? null : (map['attribute']! as String).input(),
    );
  }
}

