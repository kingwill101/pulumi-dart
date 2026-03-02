// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether template expressions are evaluated within the scope of the parent template or nested template.
class ExpressionEvaluationOptions {
  /// The scope to be used for evaluation of parameters, variables and functions in a nested template.
  final pulumi.Input<String>? scope;

  /// Creates a new [ExpressionEvaluationOptions].
  /// [scope] The scope to be used for evaluation of parameters, variables and functions in a nested template.
  ExpressionEvaluationOptions({
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
    };
  }

  factory ExpressionEvaluationOptions.fromMap(Map<String, dynamic> map) {
    return ExpressionEvaluationOptions(
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
    );
  }
}

