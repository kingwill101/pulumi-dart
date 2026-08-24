// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersUriPath {
  /// An expression that evaluates to a value to rewrite the URI path to.
  final pulumi.Input<String?>? expression;
  /// A value to rewrite the URI path to.
  final pulumi.Input<String?>? value;

  /// Creates a new [RulesetRuleActionParametersUriPath].
  /// [expression] An expression that evaluates to a value to rewrite the URI path to.
  /// [value] A value to rewrite the URI path to.
  const RulesetRuleActionParametersUriPath({
    this.expression,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'value': ?value,
    };
  }

  factory RulesetRuleActionParametersUriPath.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersUriPath(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
