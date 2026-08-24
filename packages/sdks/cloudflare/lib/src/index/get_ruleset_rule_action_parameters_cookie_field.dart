// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersCookieField {
  /// The name of the cookie.
  final pulumi.Input<String> name;

  /// Creates a new [GetRulesetRuleActionParametersCookieField].
  /// [name] The name of the cookie.
  const GetRulesetRuleActionParametersCookieField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetRulesetRuleActionParametersCookieField.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersCookieField(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
