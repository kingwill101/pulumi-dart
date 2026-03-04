// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Variable is the definition of a variable that is used for composition.
class VariableAdmissionregistrationK8sIoV1alpha1 {
  /// Expression is the expression that will be evaluated as the value of the variable. The CEL expression has access to the same identifiers as the CEL expressions in Validation.
  final pulumi.Input<String> expression;

  /// Name is the name of the variable. The name must be a valid CEL identifier and unique among all variables. The variable can be accessed in other expressions through `variables` For example, if name is "foo", the variable will be available as `variables.foo`
  final pulumi.Input<String> name;

  /// Creates a new [VariableAdmissionregistrationK8sIoV1alpha1].
  /// [expression] Expression is the expression that will be evaluated as the value of the variable. The CEL expression has access to the same identifiers as the CEL expressions in Validation.
  /// [name] Name is the name of the variable. The name must be a valid CEL identifier and unique among all variables. The variable can be accessed in other expressions through `variables` For example, if name is "foo", the variable will be available as `variables.foo`
  VariableAdmissionregistrationK8sIoV1alpha1({
    required this.expression,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expression': expression, 'name': name};
  }

  factory VariableAdmissionregistrationK8sIoV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VariableAdmissionregistrationK8sIoV1alpha1(
      expression: pulumi.Input.fromValue(map['expression'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
