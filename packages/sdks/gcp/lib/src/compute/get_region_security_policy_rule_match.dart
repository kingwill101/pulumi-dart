// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_rule_match_config.dart';
import 'get_region_security_policy_rule_match_expr.dart';

class GetRegionSecurityPolicyRuleMatch {
  /// The configuration options available when specifying versionedExpr.
  /// This field must be specified if versionedExpr is specified and cannot be specified if versionedExpr is not specified.
  final pulumi.Input<List<GetRegionSecurityPolicyRuleMatchConfig>> configs;

  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. See [Sample expressions](https://cloud.google.com/armor/docs/configure-security-policies#sample-expressions) for examples.
  final pulumi.Input<List<GetRegionSecurityPolicyRuleMatchExpr>> exprs;

  /// Preconfigured versioned expression. If this field is specified, config must also be specified.
  /// Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding srcIpRange field in config. Possible values: ["SRC_IPS_V1"]
  final pulumi.Input<String> versionedExpr;

  /// Creates a new [GetRegionSecurityPolicyRuleMatch].
  /// [configs] The configuration options available when specifying versionedExpr.
  /// [exprs] User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. See [Sample expressions](https://cloud.google.com/armor/docs/configure-security-policies#sample-expressions) for examples.
  /// [versionedExpr] Preconfigured versioned expression. If this field is specified, config must also be specified.
  GetRegionSecurityPolicyRuleMatch({
    required this.configs,
    required this.exprs,
    required this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs':
          pulumi.Input.mapInputValue<
            List<GetRegionSecurityPolicyRuleMatchConfig>,
            List<Map<String, dynamic>>
          >(
            configs,
            (value) =>
                pulumi.Input.encodeList<
                  GetRegionSecurityPolicyRuleMatchConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'exprs':
          pulumi.Input.mapInputValue<
            List<GetRegionSecurityPolicyRuleMatchExpr>,
            List<Map<String, dynamic>>
          >(
            exprs,
            (value) =>
                pulumi.Input.encodeList<
                  GetRegionSecurityPolicyRuleMatchExpr,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'versionedExpr': versionedExpr,
    };
  }

  factory GetRegionSecurityPolicyRuleMatch.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRuleMatch(
      configs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRegionSecurityPolicyRuleMatchConfig>(
          map['configs']!,
          (value) => GetRegionSecurityPolicyRuleMatchConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      exprs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRegionSecurityPolicyRuleMatchExpr>(
          map['exprs']!,
          (value) => GetRegionSecurityPolicyRuleMatchExpr.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      versionedExpr: pulumi.Input.fromValue(map['versionedExpr'] as String),
    );
  }
}
