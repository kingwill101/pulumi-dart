// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayRewriteRuleSetRewriteRuleCondition {
  /// Whether a case insensitive comparison is performed.
  final bool ignoreCase;
  /// Whether the result of the condition evaluation is negated.
  final bool negate;
  /// The pattern, either fixed string or regular expression, that evaluates the truthfulness of the condition.
  final String pattern;
  /// The [variable](https://docs.microsoft.com/azure/application-gateway/rewrite-http-headers#server-variables) of the condition.
  final String variable;

  /// Creates a new [GetApplicationGatewayRewriteRuleSetRewriteRuleCondition].
  /// [ignoreCase] Whether a case insensitive comparison is performed.
  /// [negate] Whether the result of the condition evaluation is negated.
  /// [pattern] The pattern, either fixed string or regular expression, that evaluates the truthfulness of the condition.
  /// [variable] The [variable](https://docs.microsoft.com/azure/application-gateway/rewrite-http-headers#server-variables) of the condition.
  GetApplicationGatewayRewriteRuleSetRewriteRuleCondition({
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
      ignoreCase: map['ignoreCase'] as bool,
      negate: map['negate'] as bool,
      pattern: map['pattern'] as String,
      variable: map['variable'] as String,
    );
  }
}

