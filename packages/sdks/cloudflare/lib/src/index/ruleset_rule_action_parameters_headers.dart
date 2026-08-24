// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersHeaders {
  /// An expression that evaluates to a value for the header.
  final pulumi.Input<String?>? expression;
  /// The operation to perform on the header.
  /// Available values: "add", "set", "remove".
  final pulumi.Input<String> operation;
  /// A static value for the header.
  final pulumi.Input<String?>? value;

  /// Creates a new [RulesetRuleActionParametersHeaders].
  /// [expression] An expression that evaluates to a value for the header.
  /// [operation] The operation to perform on the header.
  /// [value] A static value for the header.
  const RulesetRuleActionParametersHeaders({
    this.expression,
    required this.operation,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'operation': operation,
      'value': ?value,
    };
  }

  factory RulesetRuleActionParametersHeaders.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersHeaders(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operation: pulumi.Input.fromValue(map['operation'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
