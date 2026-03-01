// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_firewall_policy_packet_mirroring_rule_match_layer4_config.dart';

class NetworkFirewallPolicyPacketMirroringRuleMatch {
  /// CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  final List<String>? destIpRanges;
  /// Pairs of IP protocols and ports that the rule should match.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_match_layer4_configs"></a>The `layer4_configs` block supports:
  final List<NetworkFirewallPolicyPacketMirroringRuleMatchLayer4Config> layer4Configs;
  /// CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  final List<String>? srcIpRanges;

  /// Creates a new [NetworkFirewallPolicyPacketMirroringRuleMatch].
  /// [destIpRanges] CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  /// [layer4Configs] Pairs of IP protocols and ports that the rule should match.
  /// [srcIpRanges] CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  NetworkFirewallPolicyPacketMirroringRuleMatch({
    this.destIpRanges,
    required this.layer4Configs,
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destIpRanges': ?destIpRanges,
      'layer4Configs': pulumi.Input.encodeList<NetworkFirewallPolicyPacketMirroringRuleMatchLayer4Config, Map<String, dynamic>>(layer4Configs, (value) => value.toMap()),
      'srcIpRanges': ?srcIpRanges,
    };
  }

  factory NetworkFirewallPolicyPacketMirroringRuleMatch.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyPacketMirroringRuleMatch(
      destIpRanges: map['destIpRanges'] == null ? null : (map['destIpRanges'] as List).cast<String>(),
      layer4Configs: pulumi.Input.decodeList<NetworkFirewallPolicyPacketMirroringRuleMatchLayer4Config>(map['layer4Configs'], (value) => NetworkFirewallPolicyPacketMirroringRuleMatchLayer4Config.fromMap((value as Map).cast<String, dynamic>())),
      srcIpRanges: map['srcIpRanges'] == null ? null : (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}

