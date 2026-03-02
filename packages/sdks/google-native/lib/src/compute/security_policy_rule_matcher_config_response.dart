// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_matcher_config_destination_port_response.dart';
import 'security_policy_rule_matcher_config_layer4_config_response.dart';

class SecurityPolicyRuleMatcherConfigResponse {
  /// CIDR IP address range. This field may only be specified when versioned_expr is set to FIREWALL.
  final pulumi.Input<List<String>> destIpRanges;
  /// Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  final pulumi.Input<List<SecurityPolicyRuleMatcherConfigDestinationPortResponse>> destPorts;
  /// Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  final pulumi.Input<List<SecurityPolicyRuleMatcherConfigLayer4ConfigResponse>> layer4Configs;
  /// CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  final pulumi.Input<List<String>> srcIpRanges;

  /// Creates a new [SecurityPolicyRuleMatcherConfigResponse].
  /// [destIpRanges] CIDR IP address range. This field may only be specified when versioned_expr is set to FIREWALL.
  /// [destPorts] Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  /// [layer4Configs] Pairs of IP protocols and ports that the rule should match. This field may only be specified when versioned_expr is set to FIREWALL.
  /// [srcIpRanges] CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  SecurityPolicyRuleMatcherConfigResponse({
    required this.destIpRanges,
    required this.destPorts,
    required this.layer4Configs,
    required this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destIpRanges': destIpRanges,
      'destPorts': pulumi.Input.mapInputValue<List<SecurityPolicyRuleMatcherConfigDestinationPortResponse>, List<Map<String, dynamic>>>(destPorts, (value) => pulumi.Input.encodeList<SecurityPolicyRuleMatcherConfigDestinationPortResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'layer4Configs': pulumi.Input.mapInputValue<List<SecurityPolicyRuleMatcherConfigLayer4ConfigResponse>, List<Map<String, dynamic>>>(layer4Configs, (value) => pulumi.Input.encodeList<SecurityPolicyRuleMatcherConfigLayer4ConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'srcIpRanges': srcIpRanges,
    };
  }

  factory SecurityPolicyRuleMatcherConfigResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfigResponse(
      destIpRanges: ((map['destIpRanges'] as List).cast<String>()).input(),
      destPorts: (pulumi.Input.decodeList<SecurityPolicyRuleMatcherConfigDestinationPortResponse>(map['destPorts'], (value) => SecurityPolicyRuleMatcherConfigDestinationPortResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      layer4Configs: (pulumi.Input.decodeList<SecurityPolicyRuleMatcherConfigLayer4ConfigResponse>(map['layer4Configs'], (value) => SecurityPolicyRuleMatcherConfigLayer4ConfigResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      srcIpRanges: ((map['srcIpRanges'] as List).cast<String>()).input(),
    );
  }
}

