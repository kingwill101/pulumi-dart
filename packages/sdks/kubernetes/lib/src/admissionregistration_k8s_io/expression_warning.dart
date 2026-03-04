// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ExpressionWarning is a warning information that targets a specific expression.
class ExpressionWarning {
  /// The path to the field that refers the expression. For example, the reference to the expression of the first item of validations is "spec.validations[0].expression"
  final pulumi.Input<String> fieldRef;

  /// The content of type checking information in a human-readable form. Each line of the warning contains the type that the expression is checked against, followed by the type check error from the compiler.
  final pulumi.Input<String> warning;

  /// Creates a new [ExpressionWarning].
  /// [fieldRef] The path to the field that refers the expression. For example, the reference to the expression of the first item of validations is "spec.validations[0].expression"
  /// [warning] The content of type checking information in a human-readable form. Each line of the warning contains the type that the expression is checked against, followed by the type check error from the compiler.
  ExpressionWarning({required this.fieldRef, required this.warning});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fieldRef': fieldRef, 'warning': warning};
  }

  factory ExpressionWarning.fromMap(Map<String, dynamic> map) {
    return ExpressionWarning(
      fieldRef: pulumi.Input.fromValue(map['fieldRef'] as String),
      warning: pulumi.Input.fromValue(map['warning'] as String),
    );
  }
}
