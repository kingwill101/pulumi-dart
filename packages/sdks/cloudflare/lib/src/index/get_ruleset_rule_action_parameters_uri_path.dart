// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersUriPath {
  /// An expression that evaluates to a value to rewrite the URI path to.
  final pulumi.Input<String> expression;
  /// A value to rewrite the URI path to.
  final pulumi.Input<String> value;

  /// Creates a new [GetRulesetRuleActionParametersUriPath].
  /// [expression] An expression that evaluates to a value to rewrite the URI path to.
  /// [value] A value to rewrite the URI path to.
  const GetRulesetRuleActionParametersUriPath({
    required this.expression,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'value': value,
    };
  }

  factory GetRulesetRuleActionParametersUriPath.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersUriPath(
      expression: pulumi.Input.fromValue(map['expression'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
