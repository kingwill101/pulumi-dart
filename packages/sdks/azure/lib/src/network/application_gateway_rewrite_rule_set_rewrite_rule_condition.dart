// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayRewriteRuleSetRewriteRuleCondition {
  /// Perform a case in-sensitive comparison. Defaults to `false`
  final pulumi.Input<bool>? ignoreCase;
  /// Negate the result of the condition evaluation. Defaults to `false`
  final pulumi.Input<bool>? negate;
  /// The pattern, either fixed string or regular expression, that evaluates the truthfulness of the condition.
  final pulumi.Input<String> pattern;
  /// The [variable](https://docs.microsoft.com/azure/application-gateway/rewrite-http-headers#server-variables) of the condition.
  final pulumi.Input<String> variable;

  /// Creates a new [ApplicationGatewayRewriteRuleSetRewriteRuleCondition].
  /// [ignoreCase] Perform a case in-sensitive comparison. Defaults to `false`
  /// [negate] Negate the result of the condition evaluation. Defaults to `false`
  /// [pattern] The pattern, either fixed string or regular expression, that evaluates the truthfulness of the condition.
  /// [variable] The [variable](https://docs.microsoft.com/azure/application-gateway/rewrite-http-headers#server-variables) of the condition.
  ApplicationGatewayRewriteRuleSetRewriteRuleCondition({
    this.ignoreCase,
    this.negate,
    required this.pattern,
    required this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreCase': ?ignoreCase,
      'negate': ?negate,
      'pattern': pattern,
      'variable': variable,
    };
  }

  factory ApplicationGatewayRewriteRuleSetRewriteRuleCondition.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleSetRewriteRuleCondition(
      ignoreCase: map['ignoreCase'] == null ? null : (map['ignoreCase'] as bool).input(),
      negate: map['negate'] == null ? null : (map['negate'] as bool).input(),
      pattern: (map['pattern'] as String).input(),
      variable: (map['variable'] as String).input(),
    );
  }
}

