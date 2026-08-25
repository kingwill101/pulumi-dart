// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule {
  /// Fully qualified proto attribute path (e.g., dot notation)
  final pulumi.Input<String?>? attribute;

  /// Creates a new [CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule].
  /// [attribute] Fully qualified proto attribute path (e.g., dot notation)
  const CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule({
    this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': ?attribute,
    };
  }

  factory CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule.fromMap(Map<String, dynamic> map) {
    return CloudControlParameterSpecSubstitutionRulePlaceholderSubstitutionRule(
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
