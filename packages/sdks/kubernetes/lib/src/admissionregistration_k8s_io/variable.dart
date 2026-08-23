// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Variable is the definition of a variable that is used for composition. A variable is defined as a named expression.
class Variable {
  /// expression is the expression that will be evaluated as the value of the variable. The CEL expression has access to the same identifiers as the CEL expressions in Validation.
  final pulumi.Input<String> expression;
  /// name is the name of the variable. The name must be a valid CEL identifier and unique among all variables. The variable can be accessed in other expressions through `variables` For example, if name is "foo", the variable will be available as `variables.foo`
  final pulumi.Input<String> name;

  /// Creates a new [Variable].
  /// [expression] expression is the expression that will be evaluated as the value of the variable. The CEL expression has access to the same identifiers as the CEL expressions in Validation.
  /// [name] name is the name of the variable. The name must be a valid CEL identifier and unique among all variables. The variable can be accessed in other expressions through `variables` For example, if name is "foo", the variable will be available as `variables.foo`
  const Variable({
    required this.expression,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': expression,
      'name': name,
    };
  }

  factory Variable.fromMap(Map<String, dynamic> map) {
    return Variable(
      expression: pulumi.Input.fromValue(map['expression'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
