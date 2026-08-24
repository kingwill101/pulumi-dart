// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersTransformedRequestField {
  /// The name of the header.
  final pulumi.Input<String> name;

  /// Creates a new [GetRulesetRuleActionParametersTransformedRequestField].
  /// [name] The name of the header.
  const GetRulesetRuleActionParametersTransformedRequestField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetRulesetRuleActionParametersTransformedRequestField.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersTransformedRequestField(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
