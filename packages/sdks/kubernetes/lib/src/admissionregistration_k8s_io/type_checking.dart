// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_warning.dart';

/// TypeChecking contains results of type checking the expressions in the ValidatingAdmissionPolicy
class TypeChecking {
  /// The type checking warnings for each expression.
  final pulumi.Input<List<ExpressionWarning>>? expressionWarnings;

  /// Creates a new [TypeChecking].
  /// [expressionWarnings] The type checking warnings for each expression.
  TypeChecking({
    this.expressionWarnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionWarnings': ?pulumi.Input.mapOptionalInputValue<List<ExpressionWarning>, List<Map<String, dynamic>>>(expressionWarnings, (value) => pulumi.Input.encodeList<ExpressionWarning, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TypeChecking.fromMap(Map<String, dynamic> map) {
    return TypeChecking(
      expressionWarnings: map['expressionWarnings'] == null ? null : (pulumi.Input.decodeList<ExpressionWarning>(map['expressionWarnings'], (value) => ExpressionWarning.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

