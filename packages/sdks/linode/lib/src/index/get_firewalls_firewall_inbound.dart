// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallsFirewallInbound {
  /// Controls whether traffic is accepted or dropped by this rule (ACCEPT, DROP).
  final pulumi.Input<String> action;
  /// A list of IPv4 addresses or networks in IP/mask format.
  final pulumi.Input<List<String>> ipv4s;
  /// A list of IPv6 addresses or networks in IP/mask format.
  final pulumi.Input<List<String>> ipv6s;
  /// The label for the Firewall. For display purposes only. If no label is provided, a default will be assigned.
  final pulumi.Input<String> label;
  /// A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
  final pulumi.Input<String> ports;
  /// The network protocol this rule controls. (TCP, UDP, ICMP)
  final pulumi.Input<String> protocol;

  /// Creates a new [GetFirewallsFirewallInbound].
  /// [action] Controls whether traffic is accepted or dropped by this rule (ACCEPT, DROP).
  /// [ipv4s] A list of IPv4 addresses or networks in IP/mask format.
  /// [ipv6s] A list of IPv6 addresses or networks in IP/mask format.
  /// [label] The label for the Firewall. For display purposes only. If no label is provided, a default will be assigned.
  /// [ports] A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
  /// [protocol] The network protocol this rule controls. (TCP, UDP, ICMP)
  GetFirewallsFirewallInbound({
    required this.action,
    required this.ipv4s,
    required this.ipv6s,
    required this.label,
    required this.ports,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'ipv4s': ipv4s,
      'ipv6s': ipv6s,
      'label': label,
      'ports': ports,
      'protocol': protocol,
    };
  }

  factory GetFirewallsFirewallInbound.fromMap(Map<String, dynamic> map) {
    return GetFirewallsFirewallInbound(
      action: (map['action'] as String).input(),
      ipv4s: ((map['ipv4s'] as List).cast<String>()).input(),
      ipv6s: ((map['ipv6s'] as List).cast<String>()).input(),
      label: (map['label'] as String).input(),
      ports: (map['ports'] as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

