// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Variable is the definition of a variable that is used for composition. A variable is defined as a named expression.
class VariablePatchAdmissionregistrationK8sIoV1beta1 {
  /// expression is the expression that will be evaluated as the value of the variable. The CEL expression has access to the same identifiers as the CEL expressions in Validation.
  final pulumi.Input<String?>? expression;
  /// name is the name of the variable. The name must be a valid CEL identifier and unique among all variables. The variable can be accessed in other expressions through `variables` For example, if name is "foo", the variable will be available as `variables.foo`
  final pulumi.Input<String?>? name;

  /// Creates a new [VariablePatchAdmissionregistrationK8sIoV1beta1].
  /// [expression] expression is the expression that will be evaluated as the value of the variable. The CEL expression has access to the same identifiers as the CEL expressions in Validation.
  /// [name] name is the name of the variable. The name must be a valid CEL identifier and unique among all variables. The variable can be accessed in other expressions through `variables` For example, if name is "foo", the variable will be available as `variables.foo`
  const VariablePatchAdmissionregistrationK8sIoV1beta1({
    this.expression,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'name': ?name,
    };
  }

  factory VariablePatchAdmissionregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return VariablePatchAdmissionregistrationK8sIoV1beta1(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
