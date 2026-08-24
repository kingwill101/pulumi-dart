// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersFromValueTargetUrl {
  /// An expression that evaluates to a URL to redirect the request to.
  final pulumi.Input<String> expression;
  /// A URL to redirect the request to.
  final pulumi.Input<String> value;

  /// Creates a new [GetRulesetRuleActionParametersFromValueTargetUrl].
  /// [expression] An expression that evaluates to a URL to redirect the request to.
  /// [value] A URL to redirect the request to.
  const GetRulesetRuleActionParametersFromValueTargetUrl({
    required this.expression,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'value': value,
    };
  }

  factory GetRulesetRuleActionParametersFromValueTargetUrl.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersFromValueTargetUrl(
      expression: pulumi.Input.fromValue(map['expression'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
