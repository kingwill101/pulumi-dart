// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expr_response.dart';

/// `CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request. See CEL spec at: https://github.com/google/cel-spec
class CustomLevelResponse {
  /// A Cloud CEL expression evaluating to a boolean.
  final pulumi.Input<ExprResponse> expr;

  /// Creates a new [CustomLevelResponse].
  /// [expr] A Cloud CEL expression evaluating to a boolean.
  CustomLevelResponse({required this.expr});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expr': pulumi.Input.mapInputValue<ExprResponse, Map<String, dynamic>>(
        expr,
        (value) => value.toMap(),
      ),
    };
  }

  factory CustomLevelResponse.fromMap(Map<String, dynamic> map) {
    return CustomLevelResponse(
      expr: pulumi.Input.fromValue(
        ExprResponse.fromMap((map['expr']! as Map).cast<String, dynamic>()),
      ),
    );
  }
}
