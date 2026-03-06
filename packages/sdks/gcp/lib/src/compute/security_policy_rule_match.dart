// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_match_config.dart';
import 'security_policy_rule_match_expr.dart';
import 'security_policy_rule_match_expr_options.dart';

class SecurityPolicyRuleMatch {
  /// The configuration options available when specifying versionedExpr.
  /// This field must be specified if versionedExpr is specified and cannot be specified if versionedExpr is not specified.
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleMatchConfig>? config;
  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header.
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleMatchExpr>? expr;
  /// The configuration options available when specifying a user defined CEVAL expression (i.e., 'expr').
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyRuleMatchExprOptions>? exprOptions;
  /// Preconfigured versioned expression. If this field is specified, config must also be specified.
  /// Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding srcIpRange field in config.
  /// Possible values are: `SRC_IPS_V1`.
  final pulumi.Input<String>? versionedExpr;

  /// Creates a new [SecurityPolicyRuleMatch].
  /// [config] The configuration options available when specifying versionedExpr.
  /// [expr] User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header.
  /// [exprOptions] The configuration options available when specifying a user defined CEVAL expression (i.e., 'expr').
  /// [versionedExpr] Preconfigured versioned expression. If this field is specified, config must also be specified.
  const SecurityPolicyRuleMatch({
    this.config,
    this.expr,
    this.exprOptions,
    this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleMatchConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'expr': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleMatchExpr, Map<String, dynamic>>(expr, (value) => value.toMap()),
      'exprOptions': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRuleMatchExprOptions, Map<String, dynamic>>(exprOptions, (value) => value.toMap()),
      'versionedExpr': ?versionedExpr,
    };
  }

  factory SecurityPolicyRuleMatch.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatch(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleMatchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expr: (() { final guardedValue = map['expr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleMatchExpr.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exprOptions: (() { final guardedValue = map['exprOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRuleMatchExprOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      versionedExpr: (() { final guardedValue = map['versionedExpr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

