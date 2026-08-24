// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersFromValueTargetUrl {
  /// An expression that evaluates to a URL to redirect the request to.
  final pulumi.Input<String?>? expression;
  /// A URL to redirect the request to.
  final pulumi.Input<String?>? value;

  /// Creates a new [RulesetRuleActionParametersFromValueTargetUrl].
  /// [expression] An expression that evaluates to a URL to redirect the request to.
  /// [value] A URL to redirect the request to.
  const RulesetRuleActionParametersFromValueTargetUrl({
    this.expression,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'value': ?value,
    };
  }

  factory RulesetRuleActionParametersFromValueTargetUrl.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersFromValueTargetUrl(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
