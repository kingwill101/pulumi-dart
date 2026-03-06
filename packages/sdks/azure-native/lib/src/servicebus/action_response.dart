// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the filter actions which are allowed for the transformation of a message that have been matched by a filter expression.
class ActionResponse {
  /// This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20.
  final pulumi.Input<int>? compatibilityLevel;
  /// Value that indicates whether the rule action requires preprocessing.
  final pulumi.Input<bool>? requiresPreprocessing;
  /// SQL expression. e.g. MyProperty='ABC'
  final pulumi.Input<String>? sqlExpression;

  /// Creates a new [ActionResponse].
  /// [compatibilityLevel] This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20.
  /// [requiresPreprocessing] Value that indicates whether the rule action requires preprocessing.
  /// [sqlExpression] SQL expression. e.g. MyProperty='ABC'
  const ActionResponse({
    this.compatibilityLevel,
    this.requiresPreprocessing,
    this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibilityLevel': ?compatibilityLevel,
      'requiresPreprocessing': ?requiresPreprocessing,
      'sqlExpression': ?sqlExpression,
    };
  }

  factory ActionResponse.fromMap(Map<String, dynamic> map) {
    return ActionResponse(
      compatibilityLevel: (() { final guardedValue = map['compatibilityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      requiresPreprocessing: (() { final guardedValue = map['requiresPreprocessing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sqlExpression: (() { final guardedValue = map['sqlExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

