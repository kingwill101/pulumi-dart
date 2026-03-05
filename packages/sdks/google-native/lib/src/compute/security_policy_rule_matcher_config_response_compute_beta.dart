// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_matcher_config_layer4_config_response_compute_beta.dart';

class SecurityPolicyRuleMatcherConfigResponseComputeBeta {
  /// CIDR IP address range. This field may only be specified when versioned_expr is set to FIREWALL.
  final pulumi.Input<List<String>> destIpRanges;
  /// Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  final pulumi.Input<List<SecurityPolicyRuleMatcherConfigLayer4ConfigResponseComputeBeta>> layer4Configs;
  /// CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  final pulumi.Input<List<String>> srcIpRanges;

  /// Creates a new [SecurityPolicyRuleMatcherConfigResponseComputeBeta].
  /// [destIpRanges] CIDR IP address range. This field may only be specified when versioned_expr is set to FIREWALL.
  /// [layer4Configs] Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  /// [srcIpRanges] CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  SecurityPolicyRuleMatcherConfigResponseComputeBeta({
    required this.destIpRanges,
    required this.layer4Configs,
    required this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destIpRanges': destIpRanges,
      'layer4Configs': pulumi.Input.mapInputValue<List<SecurityPolicyRuleMatcherConfigLayer4ConfigResponseComputeBeta>, List<Map<String, dynamic>>>(layer4Configs, (value) => pulumi.Input.encodeList<SecurityPolicyRuleMatcherConfigLayer4ConfigResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'srcIpRanges': srcIpRanges,
    };
  }

  factory SecurityPolicyRuleMatcherConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfigResponseComputeBeta(
      destIpRanges: pulumi.Input.fromValue((map['destIpRanges'] as List).cast<String>()),
      layer4Configs: pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityPolicyRuleMatcherConfigLayer4ConfigResponseComputeBeta>(map['layer4Configs']!, (value) => SecurityPolicyRuleMatcherConfigLayer4ConfigResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
      srcIpRanges: pulumi.Input.fromValue((map['srcIpRanges'] as List).cast<String>()),
    );
  }
}

