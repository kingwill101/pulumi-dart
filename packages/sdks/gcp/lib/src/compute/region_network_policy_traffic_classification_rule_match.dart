// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_policy_traffic_classification_rule_match_layer4_config.dart';

class RegionNetworkPolicyTrafficClassificationRuleMatch {
  /// CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  final pulumi.Input<List<String>>? destIpRanges;
  /// Pairs of IP protocols and ports that the rule should match.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedMatchLayer4Configs"&gt;&lt;/a&gt;The `layer4Configs` block supports:
  final pulumi.Input<List<RegionNetworkPolicyTrafficClassificationRuleMatchLayer4Config>> layer4Configs;
  /// CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  final pulumi.Input<List<String>>? srcIpRanges;

  /// Creates a new [RegionNetworkPolicyTrafficClassificationRuleMatch].
  /// [destIpRanges] CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  /// [layer4Configs] Pairs of IP protocols and ports that the rule should match.
  /// [srcIpRanges] CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  const RegionNetworkPolicyTrafficClassificationRuleMatch({
    this.destIpRanges,
    required this.layer4Configs,
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destIpRanges': ?destIpRanges,
      'layer4Configs': pulumi.Input.mapInputValue<List<RegionNetworkPolicyTrafficClassificationRuleMatchLayer4Config>, List<Map<String, dynamic>>>(layer4Configs, (value) => pulumi.Input.encodeList<RegionNetworkPolicyTrafficClassificationRuleMatchLayer4Config, Map<String, dynamic>>(value, (value) => value.toMap())),
      'srcIpRanges': ?srcIpRanges,
    };
  }

  factory RegionNetworkPolicyTrafficClassificationRuleMatch.fromMap(Map<String, dynamic> map) {
    return RegionNetworkPolicyTrafficClassificationRuleMatch(
      destIpRanges: (() { final guardedValue = map['destIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      layer4Configs: pulumi.Input.fromValue(pulumi.Input.decodeList<RegionNetworkPolicyTrafficClassificationRuleMatchLayer4Config>(map['layer4Configs']!, (value) => RegionNetworkPolicyTrafficClassificationRuleMatchLayer4Config.fromMap((value as Map).cast<String, dynamic>()))),
      srcIpRanges: (() { final guardedValue = map['srcIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
