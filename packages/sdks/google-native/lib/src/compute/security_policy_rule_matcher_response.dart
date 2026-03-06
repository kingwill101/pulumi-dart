// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expr_response.dart';
import 'security_policy_rule_matcher_config_response.dart';
import 'security_policy_rule_matcher_expr_options_response.dart';

/// Represents a match condition that incoming traffic is evaluated against. Exactly one field must be specified.
class SecurityPolicyRuleMatcherResponse {
  /// The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified.
  final pulumi.Input<SecurityPolicyRuleMatcherConfigResponse> config;
  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. Expressions containing `evaluateThreatIntelligence` require Cloud Armor Managed Protection Plus tier and are not supported in Edge Policies nor in Regional Policies. Expressions containing `evaluatePreconfiguredExpr('sourceiplist-*')` require Cloud Armor Managed Protection Plus tier and are only supported in Global Security Policies.
  final pulumi.Input<ExprResponse> expr;
  /// The configuration options available when specifying a user defined CEVAL expression (i.e., 'expr').
  final pulumi.Input<SecurityPolicyRuleMatcherExprOptionsResponse> exprOptions;
  /// Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
  final pulumi.Input<String> versionedExpr;

  /// Creates a new [SecurityPolicyRuleMatcherResponse].
  /// [config] The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified.
  /// [expr] User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. Expressions containing `evaluateThreatIntelligence` require Cloud Armor Managed Protection Plus tier and are not supported in Edge Policies nor in Regional Policies. Expressions containing `evaluatePreconfiguredExpr('sourceiplist-*')` require Cloud Armor Managed Protection Plus tier and are only supported in Global Security Policies.
  /// [exprOptions] The configuration options available when specifying a user defined CEVAL expression (i.e., 'expr').
  /// [versionedExpr] Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
  const SecurityPolicyRuleMatcherResponse({
    required this.config,
    required this.expr,
    required this.exprOptions,
    required this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<SecurityPolicyRuleMatcherConfigResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
      'expr': pulumi.Input.mapInputValue<ExprResponse, Map<String, dynamic>>(expr, (value) => value.toMap()),
      'exprOptions': pulumi.Input.mapInputValue<SecurityPolicyRuleMatcherExprOptionsResponse, Map<String, dynamic>>(exprOptions, (value) => value.toMap()),
      'versionedExpr': versionedExpr,
    };
  }

  factory SecurityPolicyRuleMatcherResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherResponse(
      config: pulumi.Input.fromValue(SecurityPolicyRuleMatcherConfigResponse.fromMap((map['config']! as Map).cast<String, dynamic>())),
      expr: pulumi.Input.fromValue(ExprResponse.fromMap((map['expr']! as Map).cast<String, dynamic>())),
      exprOptions: pulumi.Input.fromValue(SecurityPolicyRuleMatcherExprOptionsResponse.fromMap((map['exprOptions']! as Map).cast<String, dynamic>())),
      versionedExpr: pulumi.Input.fromValue(map['versionedExpr'] as String),
    );
  }
}

