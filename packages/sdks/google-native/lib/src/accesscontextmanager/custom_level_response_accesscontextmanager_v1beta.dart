// ignore_for_file: unused_element, unnecessary_cast

import 'expr_response_accesscontextmanager_v1beta.dart';

/// `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request. See CEL spec at: https://github.com/google/cel-spec
class CustomLevelResponseAccesscontextmanagerV1beta {
  /// A Cloud CEL expression evaluating to a boolean.
  final ExprResponseAccesscontextmanagerV1beta expr;

  /// Creates a new [CustomLevelResponseAccesscontextmanagerV1beta].
  /// [expr] A Cloud CEL expression evaluating to a boolean.
  CustomLevelResponseAccesscontextmanagerV1beta({
    required this.expr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expr': expr.toMap(),
    };
  }

  factory CustomLevelResponseAccesscontextmanagerV1beta.fromMap(Map<String, dynamic> map) {
    return CustomLevelResponseAccesscontextmanagerV1beta(
      expr: ExprResponseAccesscontextmanagerV1beta.fromMap((map['expr'] as Map).cast<String, dynamic>()),
    );
  }
}

