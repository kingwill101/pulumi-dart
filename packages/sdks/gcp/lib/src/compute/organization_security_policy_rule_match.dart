// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_rule_match_config.dart';
import 'organization_security_policy_rule_match_expr.dart';

class OrganizationSecurityPolicyRuleMatch {
  /// The configuration options for matching the rule.
  /// Structure is documented below.
  final pulumi.Input<OrganizationSecurityPolicyRuleMatchConfig>? config;
  /// A description of the rule.
  final pulumi.Input<String>? description;
  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header.
  /// Structure is documented below.
  final pulumi.Input<OrganizationSecurityPolicyRuleMatchExpr>? expr;
  /// Preconfigured versioned expression. For organization security policy rules,
  /// the only supported type is "SRC_IPS_V1".
  /// **NOTE** : 'FIREWALL' type is deprecated. Please use 'google_compute_firewall_policy_rule' resource instead.
  final pulumi.Input<String>? versionedExpr;

  /// Creates a new [OrganizationSecurityPolicyRuleMatch].
  /// [config] The configuration options for matching the rule.
  /// [description] A description of the rule.
  /// [expr] User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header.
  /// [versionedExpr] Preconfigured versioned expression. For organization security policy rules,
  const OrganizationSecurityPolicyRuleMatch({
    this.config,
    this.description,
    this.expr,
    this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<OrganizationSecurityPolicyRuleMatchConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'description': ?description,
      'expr': ?pulumi.Input.mapOptionalInputValue<OrganizationSecurityPolicyRuleMatchExpr, Map<String, dynamic>>(expr, (value) => value.toMap()),
      'versionedExpr': ?versionedExpr,
    };
  }

  factory OrganizationSecurityPolicyRuleMatch.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRuleMatch(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationSecurityPolicyRuleMatchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expr: (() { final guardedValue = map['expr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationSecurityPolicyRuleMatchExpr.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      versionedExpr: (() { final guardedValue = map['versionedExpr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
