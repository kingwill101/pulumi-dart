// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersHeaders {
  /// An expression that evaluates to a value for the header.
  final pulumi.Input<String> expression;
  /// The operation to perform on the header.
  /// Available values: "add", "set", "remove".
  final pulumi.Input<String> operation;
  /// A static value for the header.
  final pulumi.Input<String> value;

  /// Creates a new [GetRulesetRuleActionParametersHeaders].
  /// [expression] An expression that evaluates to a value for the header.
  /// [operation] The operation to perform on the header.
  /// [value] A static value for the header.
  const GetRulesetRuleActionParametersHeaders({
    required this.expression,
    required this.operation,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'operation': operation,
      'value': value,
    };
  }

  factory GetRulesetRuleActionParametersHeaders.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersHeaders(
      expression: pulumi.Input.fromValue(map['expression'] as String),
      operation: pulumi.Input.fromValue(map['operation'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
