// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a filter which is a composition of an expression and an action that is executed in the pub/sub pipeline.
class SqlFilterResponse {
  /// This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20.
  final pulumi.Input<int>? compatibilityLevel;
  /// Value that indicates whether the rule action requires preprocessing.
  final pulumi.Input<bool>? requiresPreprocessing;
  /// The SQL expression. e.g. MyProperty='ABC'
  final pulumi.Input<String>? sqlExpression;

  /// Creates a new [SqlFilterResponse].
  /// [compatibilityLevel] This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20.
  /// [requiresPreprocessing] Value that indicates whether the rule action requires preprocessing.
  /// [sqlExpression] The SQL expression. e.g. MyProperty='ABC'
  SqlFilterResponse({
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

  factory SqlFilterResponse.fromMap(Map<String, dynamic> map) {
    return SqlFilterResponse(
      compatibilityLevel: map['compatibilityLevel'] == null ? null : (map['compatibilityLevel']! as int).input(),
      requiresPreprocessing: map['requiresPreprocessing'] == null ? null : (map['requiresPreprocessing']! as bool).input(),
      sqlExpression: map['sqlExpression'] == null ? null : (map['sqlExpression']! as String).input(),
    );
  }
}

