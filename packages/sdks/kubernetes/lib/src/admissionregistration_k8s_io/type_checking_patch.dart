// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_warning_patch.dart';

/// TypeChecking contains results of type checking the expressions in the ValidatingAdmissionPolicy
class TypeCheckingPatch {
  /// The type checking warnings for each expression.
  final pulumi.Input<List<ExpressionWarningPatch>>? expressionWarnings;

  /// Creates a new [TypeCheckingPatch].
  /// [expressionWarnings] The type checking warnings for each expression.
  const TypeCheckingPatch({
    this.expressionWarnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionWarnings': ?pulumi.Input.mapOptionalInputValue<List<ExpressionWarningPatch>, List<Map<String, dynamic>>>(expressionWarnings, (value) => pulumi.Input.encodeList<ExpressionWarningPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TypeCheckingPatch.fromMap(Map<String, dynamic> map) {
    return TypeCheckingPatch(
      expressionWarnings: (() { final guardedValue = map['expressionWarnings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExpressionWarningPatch>(guardedValue, (value) => ExpressionWarningPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

