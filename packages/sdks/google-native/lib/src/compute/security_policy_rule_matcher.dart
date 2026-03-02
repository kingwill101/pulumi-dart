// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expr.dart';
import 'security_policy_rule_matcher_config.dart';
import 'security_policy_rule_matcher_expr_options.dart';
import 'security_policy_rule_matcher_versioned_expr.dart';

/// Represents a match condition that incoming traffic is evaluated against. Exactly one field must be specified.
class SecurityPolicyRuleMatcher {
  /// The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified.
  final pulumi.Input<SecurityPolicyRuleMatcherConfig>? config;
  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. Expressions containing `evaluateThreatIntelligence` require Cloud Armor Managed Protection Plus tier and are not supported in Edge Policies nor in Regional Policies. Expressions containing `evaluatePreconfiguredExpr('sourceiplist-*')` require Cloud Armor Managed Protection Plus tier and are only supported in Global Security Policies.
  final pulumi.Input<Expr>? expr;
  /// The configuration options available when specifying a user defined CEVAL expression (i.e., 'expr').
  final pulumi.Input<SecurityPolicyRuleMatcherExprOptions>? exprOptions;
  /// Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
  final pulumi.Input<SecurityPolicyRuleMatcherVersionedExpr>? versionedExpr;

  /// Creates a new [SecurityPolicyRuleMatcher].
  /// [config] The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified.
  /// [expr] User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. Expressions containing `evaluateThreatIntelligence` require Cloud Armor Managed Protection Plus tier and are not supported in Edge Policies nor in Regional Policies. Expressions containing `evaluatePreconfiguredExpr('sourceiplist-*')` require Cloud Armor Managed Protection Plus tier and are only supported in Global Security Policies.
  /// [exprOptions] The configuration options available when specifying a user defined CEVAL expression (i.e., 'expr').
  /// [versionedExpr] Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
  SecurityPolicyRuleMatcher({
    this.config,
    this.expr,
    this.exprOptions,
    this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleMatcherConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'expr': ?pulumi.Input.mapOptionalInputValue<Expr, Map<String, dynamic>>(expr, (value) => value.toMap()),
      'exprOptions': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleMatcherExprOptions, Map<String, dynamic>>(exprOptions, (value) => value.toMap()),
      'versionedExpr': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleMatcherVersionedExpr, String>(versionedExpr, (value) => value.value),
    };
  }

  factory SecurityPolicyRuleMatcher.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcher(
      config: map['config'] == null ? null : (SecurityPolicyRuleMatcherConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      expr: map['expr'] == null ? null : (Expr.fromMap((map['expr'] as Map).cast<String, dynamic>())).input(),
      exprOptions: map['exprOptions'] == null ? null : (SecurityPolicyRuleMatcherExprOptions.fromMap((map['exprOptions'] as Map).cast<String, dynamic>())).input(),
      versionedExpr: map['versionedExpr'] == null ? null : (SecurityPolicyRuleMatcherVersionedExpr.fromValue(map['versionedExpr'] as String)).input(),
    );
  }
}

