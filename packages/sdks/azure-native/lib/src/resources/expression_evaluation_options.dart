// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether template expressions are evaluated within the scope of the parent template or nested template.
class ExpressionEvaluationOptions {
  /// The scope to be used for evaluation of parameters, variables and functions in a nested template.
  final pulumi.Input<dynamic>? scope;

  /// Creates a new [ExpressionEvaluationOptions].
  /// [scope] The scope to be used for evaluation of parameters, variables and functions in a nested template.
  const ExpressionEvaluationOptions({
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
    };
  }

  factory ExpressionEvaluationOptions.fromMap(Map<String, dynamic> map) {
    return ExpressionEvaluationOptions(
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
