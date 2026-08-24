// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersTransformedRequestField {
  /// The name of the header.
  final pulumi.Input<String> name;

  /// Creates a new [RulesetRuleActionParametersTransformedRequestField].
  /// [name] The name of the header.
  const RulesetRuleActionParametersTransformedRequestField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RulesetRuleActionParametersTransformedRequestField.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersTransformedRequestField(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
