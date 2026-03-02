// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_rule_match_config.dart';
import 'get_security_policy_rule_match_expr.dart';
import 'get_security_policy_rule_match_expr_option.dart';

class GetSecurityPolicyRuleMatch {
  /// The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified.
  final pulumi.Input<List<GetSecurityPolicyRuleMatchConfig>> configs;
  /// The configuration options available when specifying a user defined CEVAL expression (i.e., 'expr').
  final pulumi.Input<List<GetSecurityPolicyRuleMatchExprOption>> exprOptions;
  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header.
  final pulumi.Input<List<GetSecurityPolicyRuleMatchExpr>> exprs;
  /// Predefined rule expression. If this field is specified, config must also be specified. Available options:   SRC_IPS_V1: Must specify the corresponding src_ip_ranges field in config.
  final pulumi.Input<String> versionedExpr;

  /// Creates a new [GetSecurityPolicyRuleMatch].
  /// [configs] The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified.
  /// [exprOptions] The configuration options available when specifying a user defined CEVAL expression (i.e., 'expr').
  /// [exprs] User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header.
  /// [versionedExpr] Predefined rule expression. If this field is specified, config must also be specified. Available options:   SRC_IPS_V1: Must specify the corresponding src_ip_ranges field in config.
  GetSecurityPolicyRuleMatch({
    required this.configs,
    required this.exprOptions,
    required this.exprs,
    required this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': pulumi.Input.mapInputValue<List<GetSecurityPolicyRuleMatchConfig>, List<Map<String, dynamic>>>(configs, (value) => pulumi.Input.encodeList<GetSecurityPolicyRuleMatchConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exprOptions': pulumi.Input.mapInputValue<List<GetSecurityPolicyRuleMatchExprOption>, List<Map<String, dynamic>>>(exprOptions, (value) => pulumi.Input.encodeList<GetSecurityPolicyRuleMatchExprOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exprs': pulumi.Input.mapInputValue<List<GetSecurityPolicyRuleMatchExpr>, List<Map<String, dynamic>>>(exprs, (value) => pulumi.Input.encodeList<GetSecurityPolicyRuleMatchExpr, Map<String, dynamic>>(value, (value) => value.toMap())),
      'versionedExpr': versionedExpr,
    };
  }

  factory GetSecurityPolicyRuleMatch.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRuleMatch(
      configs: (pulumi.Input.decodeList<GetSecurityPolicyRuleMatchConfig>(map['configs'], (value) => GetSecurityPolicyRuleMatchConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      exprOptions: (pulumi.Input.decodeList<GetSecurityPolicyRuleMatchExprOption>(map['exprOptions'], (value) => GetSecurityPolicyRuleMatchExprOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      exprs: (pulumi.Input.decodeList<GetSecurityPolicyRuleMatchExpr>(map['exprs'], (value) => GetSecurityPolicyRuleMatchExpr.fromMap((value as Map).cast<String, dynamic>()))).input(),
      versionedExpr: (map['versionedExpr'] as String).input(),
    );
  }
}

