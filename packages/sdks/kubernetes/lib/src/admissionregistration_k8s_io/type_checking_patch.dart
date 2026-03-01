// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_warning_patch.dart';

/// TypeChecking contains results of type checking the expressions in the ValidatingAdmissionPolicy
class TypeCheckingPatch {
  /// The type checking warnings for each expression.
  final List<ExpressionWarningPatch>? expressionWarnings;

  /// Creates a new [TypeCheckingPatch].
  /// [expressionWarnings] The type checking warnings for each expression.
  TypeCheckingPatch({
    this.expressionWarnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionWarnings': ?expressionWarnings == null ? null : pulumi.Input.encodeList<ExpressionWarningPatch, Map<String, dynamic>>(expressionWarnings!, (value) => value.toMap()),
    };
  }

  factory TypeCheckingPatch.fromMap(Map<String, dynamic> map) {
    return TypeCheckingPatch(
      expressionWarnings: map['expressionWarnings'] == null ? null : pulumi.Input.decodeList<ExpressionWarningPatch>(map['expressionWarnings'], (value) => ExpressionWarningPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

