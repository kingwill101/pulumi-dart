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
      ignoreCase: (() { final guardedValue = map['ignoreCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      negate: (() { final guardedValue = map['negate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      variable: pulumi.Input.fromValue(map['variable'] as String),
    );
  }
}

