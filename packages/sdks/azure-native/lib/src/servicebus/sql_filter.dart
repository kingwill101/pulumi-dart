// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a filter which is a composition of an expression and an action that is executed in the pub/sub pipeline.
class SqlFilter {
  /// This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20.
  final pulumi.Input<int>? compatibilityLevel;

  /// Value that indicates whether the rule action requires preprocessing.
  final pulumi.Input<bool>? requiresPreprocessing;

  /// The SQL expression. e.g. MyProperty='ABC'
  final pulumi.Input<String>? sqlExpression;

  /// Creates a new [SqlFilter].
  /// [compatibilityLevel] This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20.
  /// [requiresPreprocessing] Value that indicates whether the rule action requires preprocessing.
  /// [sqlExpression] The SQL expression. e.g. MyProperty='ABC'
  SqlFilter({
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

  factory SqlFilter.fromMap(Map<String, dynamic> map) {
    return SqlFilter(
      compatibilityLevel: (() {
        final guardedValue = map['compatibilityLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      requiresPreprocessing: (() {
        final guardedValue = map['requiresPreprocessing'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sqlExpression: (() {
        final guardedValue = map['sqlExpression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
