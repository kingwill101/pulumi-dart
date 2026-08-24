// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersUriQuery {
  /// An expression that evaluates to a value to rewrite the URI query to.
  final pulumi.Input<String> expression;
  /// A value to rewrite the URI query to.
  final pulumi.Input<String> value;

  /// Creates a new [GetRulesetRuleActionParametersUriQuery].
  /// [expression] An expression that evaluates to a value to rewrite the URI query to.
  /// [value] A value to rewrite the URI query to.
  const GetRulesetRuleActionParametersUriQuery({
    required this.expression,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'value': value,
    };
  }

  factory GetRulesetRuleActionParametersUriQuery.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersUriQuery(
      expression: pulumi.Input.fromValue(map['expression'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
