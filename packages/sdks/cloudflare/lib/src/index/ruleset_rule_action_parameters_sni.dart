// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersSni {
  /// A value to override the SNI to.
  final pulumi.Input<String> value;

  /// Creates a new [RulesetRuleActionParametersSni].
  /// [value] A value to override the SNI to.
  const RulesetRuleActionParametersSni({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory RulesetRuleActionParametersSni.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersSni(
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
