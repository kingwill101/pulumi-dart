// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersFromList {
  /// An expression that evaluates to the list lookup key.
  final pulumi.Input<String> key;
  /// The name of the list to match against.
  final pulumi.Input<String> name;

  /// Creates a new [GetRulesetRuleActionParametersFromList].
  /// [key] An expression that evaluates to the list lookup key.
  /// [name] The name of the list to match against.
  const GetRulesetRuleActionParametersFromList({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory GetRulesetRuleActionParametersFromList.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersFromList(
      key: pulumi.Input.fromValue(map['key'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
