// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ExpressionWarning is a warning information that targets a specific expression.
class ExpressionWarningAdmissionregistrationK8sIoV1alpha1 {
  /// The path to the field that refers the expression. For example, the reference to the expression of the first item of validations is "spec.validations[0].expression"
  final pulumi.Input<String> fieldRef;
  /// The content of type checking information in a human-readable form. Each line of the warning contains the type that the expression is checked against, followed by the type check error from the compiler.
  final pulumi.Input<String> warning;

  /// Creates a new [ExpressionWarningAdmissionregistrationK8sIoV1alpha1].
  /// [fieldRef] The path to the field that refers the expression. For example, the reference to the expression of the first item of validations is "spec.validations[0].expression"
  /// [warning] The content of type checking information in a human-readable form. Each line of the warning contains the type that the expression is checked against, followed by the type check error from the compiler.
  const ExpressionWarningAdmissionregistrationK8sIoV1alpha1({
    required this.fieldRef,
    required this.warning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldRef': fieldRef,
      'warning': warning,
    };
  }

  factory ExpressionWarningAdmissionregistrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ExpressionWarningAdmissionregistrationK8sIoV1alpha1(
      fieldRef: pulumi.Input.fromValue(map['fieldRef'] as String),
      warning: pulumi.Input.fromValue(map['warning'] as String),
    );
  }
}

