// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersRequestField {
  /// The name of the header.
  final pulumi.Input<String> name;

  /// Creates a new [GetRulesetRuleActionParametersRequestField].
  /// [name] The name of the header.
  const GetRulesetRuleActionParametersRequestField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetRulesetRuleActionParametersRequestField.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersRequestField(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
