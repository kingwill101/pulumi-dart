// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_matcher_config_layer4_config_compute_beta.dart';

class SecurityPolicyRuleMatcherConfigComputeBeta {
  /// CIDR IP address range. This field may only be specified when versioned_expr is set to FIREWALL.
  final pulumi.Input<List<String>>? destIpRanges;
  /// Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  final pulumi.Input<List<SecurityPolicyRuleMatcherConfigLayer4ConfigComputeBeta>>? layer4Configs;
  /// CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  final pulumi.Input<List<String>>? srcIpRanges;

  /// Creates a new [SecurityPolicyRuleMatcherConfigComputeBeta].
  /// [destIpRanges] CIDR IP address range. This field may only be specified when versioned_expr is set to FIREWALL.
  /// [layer4Configs] Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  /// [srcIpRanges] CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  SecurityPolicyRuleMatcherConfigComputeBeta({
    this.destIpRanges,
    this.layer4Configs,
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destIpRanges': ?destIpRanges,
      'layer4Configs': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRuleMatcherConfigLayer4ConfigComputeBeta>, List<Map<String, dynamic>>>(layer4Configs, (value) => pulumi.Input.encodeList<SecurityPolicyRuleMatcherConfigLayer4ConfigComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'srcIpRanges': ?srcIpRanges,
    };
  }

  factory SecurityPolicyRuleMatcherConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfigComputeBeta(
      destIpRanges: (() { final guardedValue = map['destIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      layer4Configs: (() { final guardedValue = map['layer4Configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityPolicyRuleMatcherConfigLayer4ConfigComputeBeta>(guardedValue, (value) => SecurityPolicyRuleMatcherConfigLayer4ConfigComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      srcIpRanges: (() { final guardedValue = map['srcIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

