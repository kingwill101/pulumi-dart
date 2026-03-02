// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_rule_match_config.dart';
import 'region_security_policy_rule_match_expr.dart';

class RegionSecurityPolicyRuleMatch {
  /// The configuration options available when specifying versionedExpr.
  /// This field must be specified if versionedExpr is specified and cannot be specified if versionedExpr is not specified.
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyRuleMatchConfig>? config;
  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header.
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyRuleMatchExpr>? expr;
  /// Preconfigured versioned expression. If this field is specified, config must also be specified.
  /// Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding srcIpRange field in config.
  /// Possible values are: `SRC_IPS_V1`.
  final pulumi.Input<String>? versionedExpr;

  /// Creates a new [RegionSecurityPolicyRuleMatch].
  /// [config] The configuration options available when specifying versionedExpr.
  /// [expr] User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header.
  /// [versionedExpr] Preconfigured versioned expression. If this field is specified, config must also be specified.
  RegionSecurityPolicyRuleMatch({
    this.config,
    this.expr,
    this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<RegionSecurityPolicyRuleMatchConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'expr': ?pulumi.Input.mapOptionalInputValue<RegionSecurityPolicyRuleMatchExpr, Map<String, dynamic>>(expr, (value) => value.toMap()),
      'versionedExpr': ?versionedExpr,
    };
  }

  factory RegionSecurityPolicyRuleMatch.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyRuleMatch(
      config: map['config'] == null ? null : (RegionSecurityPolicyRuleMatchConfig.fromMap((map['config']! as Map).cast<String, dynamic>())).input(),
      expr: map['expr'] == null ? null : (RegionSecurityPolicyRuleMatchExpr.fromMap((map['expr']! as Map).cast<String, dynamic>())).input(),
      versionedExpr: map['versionedExpr'] == null ? null : (map['versionedExpr']! as String).input(),
    );
  }
}

