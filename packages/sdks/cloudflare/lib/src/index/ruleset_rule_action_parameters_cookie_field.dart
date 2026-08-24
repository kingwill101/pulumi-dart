// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersCookieField {
  /// The name of the cookie.
  final pulumi.Input<String> name;

  /// Creates a new [RulesetRuleActionParametersCookieField].
  /// [name] The name of the cookie.
  const RulesetRuleActionParametersCookieField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RulesetRuleActionParametersCookieField.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersCookieField(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
