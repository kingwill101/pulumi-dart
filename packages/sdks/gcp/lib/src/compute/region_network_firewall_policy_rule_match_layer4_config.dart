// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionNetworkFirewallPolicyRuleMatchLayer4Config {
  /// The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule.
  /// This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, ipip, sctp), or the IP protocol number.
  final pulumi.Input<String> ipProtocol;
  /// An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port.
  /// Example inputs include: ["22"], ["80","443"], and ["12345-12349"].
  final pulumi.Input<List<String>>? ports;

  /// Creates a new [RegionNetworkFirewallPolicyRuleMatchLayer4Config].
  /// [ipProtocol] The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule.
  /// [ports] An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port.
  RegionNetworkFirewallPolicyRuleMatchLayer4Config({
    required this.ipProtocol,
    this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipProtocol': ipProtocol,
      'ports': ?ports,
    };
  }

  factory RegionNetworkFirewallPolicyRuleMatchLayer4Config.fromMap(Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyRuleMatchLayer4Config(
      ipProtocol: pulumi.Input.fromValue(map['ipProtocol'] as String),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

