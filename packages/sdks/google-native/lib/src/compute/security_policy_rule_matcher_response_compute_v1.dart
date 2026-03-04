// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expr_response_compute_v1.dart';
import 'security_policy_rule_matcher_config_response_compute_v1.dart';

/// Represents a match condition that incoming traffic is evaluated against. Exactly one field must be specified.
class SecurityPolicyRuleMatcherResponseComputeV1 {
  /// The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified.
  final pulumi.Input<SecurityPolicyRuleMatcherConfigResponseComputeV1> config;

  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. Expressions containing `evaluateThreatIntelligence` require Cloud Armor Managed Protection Plus tier and are not supported in Edge Policies nor in Regional Policies. Expressions containing `evaluatePreconfiguredExpr('sourceiplist-*')` require Cloud Armor Managed Protection Plus tier and are only supported in Global Security Policies.
  final pulumi.Input<ExprResponseComputeV1> expr;

  /// Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
  final pulumi.Input<String> versionedExpr;

  /// Creates a new [SecurityPolicyRuleMatcherResponseComputeV1].
  /// [config] The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified.
  /// [expr] User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. Expressions containing `evaluateThreatIntelligence` require Cloud Armor Managed Protection Plus tier and are not supported in Edge Policies nor in Regional Policies. Expressions containing `evaluatePreconfiguredExpr('sourceiplist-*')` require Cloud Armor Managed Protection Plus tier and are only supported in Global Security Policies.
  /// [versionedExpr] Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
  SecurityPolicyRuleMatcherResponseComputeV1({
    required this.config,
    required this.expr,
    required this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config':
          pulumi.Input.mapInputValue<
            SecurityPolicyRuleMatcherConfigResponseComputeV1,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'expr':
          pulumi.Input.mapInputValue<
            ExprResponseComputeV1,
            Map<String, dynamic>
          >(expr, (value) => value.toMap()),
      'versionedExpr': versionedExpr,
    };
  }

  factory SecurityPolicyRuleMatcherResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRuleMatcherResponseComputeV1(
      config: pulumi.Input.fromValue(
        SecurityPolicyRuleMatcherConfigResponseComputeV1.fromMap(
          (map['config']! as Map).cast<String, dynamic>(),
        ),
      ),
      expr: pulumi.Input.fromValue(
        ExprResponseComputeV1.fromMap(
          (map['expr']! as Map).cast<String, dynamic>(),
        ),
      ),
      versionedExpr: pulumi.Input.fromValue(map['versionedExpr'] as String),
    );
  }
}
