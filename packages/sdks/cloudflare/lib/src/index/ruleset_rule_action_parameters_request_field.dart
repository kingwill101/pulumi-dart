// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersRequestField {
  /// The name of the header.
  final pulumi.Input<String> name;

  /// Creates a new [RulesetRuleActionParametersRequestField].
  /// [name] The name of the header.
  const RulesetRuleActionParametersRequestField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RulesetRuleActionParametersRequestField.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersRequestField(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
