// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_rule_match_config_layer4_config.dart';

class OrganizationSecurityPolicyRuleMatchConfig {
  /// (Optional, Beta)
  /// Destination IP address range in CIDR format. Required for EGRESS rules.
  /// This field may only be specified when versionedExpr is set to FIREWALL.
  final pulumi.Input<List<String>>? destIpRanges;
  /// (Optional, Beta)
  /// Pairs of IP protocols and ports that the rule should match.
  /// This field may only be specified when versionedExpr is set to FIREWALL.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedMatchConfigLayer4Config"&gt;&lt;/a&gt;The `layer4Config` block supports:
  final pulumi.Input<List<OrganizationSecurityPolicyRuleMatchConfigLayer4Config>>? layer4Configs;
  /// Source IP address range in CIDR format. Required for
  /// INGRESS rules.
  final pulumi.Input<List<String>>? srcIpRanges;

  /// Creates a new [OrganizationSecurityPolicyRuleMatchConfig].
  /// [destIpRanges] (Optional, Beta)
  /// [layer4Configs] (Optional, Beta)
  /// [srcIpRanges] Source IP address range in CIDR format. Required for
  const OrganizationSecurityPolicyRuleMatchConfig({
    this.destIpRanges,
    this.layer4Configs,
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destIpRanges': ?destIpRanges,
      'layer4Configs': ?pulumi.Input.mapOptionalInputValue<List<OrganizationSecurityPolicyRuleMatchConfigLayer4Config>, List<Map<String, dynamic>>>(layer4Configs, (value) => pulumi.Input.encodeList<OrganizationSecurityPolicyRuleMatchConfigLayer4Config, Map<String, dynamic>>(value, (value) => value.toMap())),
      'srcIpRanges': ?srcIpRanges,
    };
  }

  factory OrganizationSecurityPolicyRuleMatchConfig.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRuleMatchConfig(
      destIpRanges: (() { final guardedValue = map['destIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      layer4Configs: (() { final guardedValue = map['layer4Configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationSecurityPolicyRuleMatchConfigLayer4Config>(guardedValue, (value) => OrganizationSecurityPolicyRuleMatchConfigLayer4Config.fromMap((value as Map).cast<String, dynamic>()))); })(),
      srcIpRanges: (() { final guardedValue = map['srcIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
