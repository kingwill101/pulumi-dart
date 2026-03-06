// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayRewriteRuleSetRewriteRuleCondition {
  /// Whether a case insensitive comparison is performed.
  final pulumi.Input<bool> ignoreCase;
  /// Whether the result of the condition evaluation is negated.
  final pulumi.Input<bool> negate;
  /// The pattern, either fixed string or regular expression, that evaluates the truthfulness of the condition.
  final pulumi.Input<String> pattern;
  /// The [variable](https://docs.microsoft.com/azure/application-gateway/rewrite-http-headers#server-variables) of the condition.
  final pulumi.Input<String> variable;

  /// Creates a new [GetApplicationGatewayRewriteRuleSetRewriteRuleCondition].
  /// [ignoreCase] Whether a case insensitive comparison is performed.
  /// [negate] Whether the result of the condition evaluation is negated.
  /// [pattern] The pattern, either fixed string or regular expression, that evaluates the truthfulness of the condition.
  /// [variable] The [variable](https://docs.microsoft.com/azure/application-gateway/rewrite-http-headers#server-variables) of the condition.
  const GetApplicationGatewayRewriteRuleSetRewriteRuleCondition({
    required this.ignoreCase,
    required this.negate,
    required this.pattern,
    required this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreCase': ignoreCase,
      'negate': negate,
      'pattern': pattern,
      'variable': variable,
    };
  }

  factory GetApplicationGatewayRewriteRuleSetRewriteRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayRewriteRuleSetRewriteRuleCondition(
      ignoreCase: pulumi.Input.fromValue(map['ignoreCase'] as bool),
      negate: pulumi.Input.fromValue(map['negate'] as bool),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      variable: pulumi.Input.fromValue(map['variable'] as String),
    );
  }
}

