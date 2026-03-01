// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallsFirewallOutbound {
  /// Controls whether traffic is accepted or dropped by this rule (ACCEPT, DROP).
  final String action;
  /// A list of IPv4 addresses or networks in IP/mask format.
  final List<String> ipv4s;
  /// A list of IPv6 addresses or networks in IP/mask format.
  final List<String> ipv6s;
  /// The label for the Firewall. For display purposes only. If no label is provided, a default will be assigned.
  final String label;
  /// A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
  final String ports;
  /// The network protocol this rule controls. (TCP, UDP, ICMP)
  final String protocol;

  /// Creates a new [GetFirewallsFirewallOutbound].
  /// [action] Controls whether traffic is accepted or dropped by this rule (ACCEPT, DROP).
  /// [ipv4s] A list of IPv4 addresses or networks in IP/mask format.
  /// [ipv6s] A list of IPv6 addresses or networks in IP/mask format.
  /// [label] The label for the Firewall. For display purposes only. If no label is provided, a default will be assigned.
  /// [ports] A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
  /// [protocol] The network protocol this rule controls. (TCP, UDP, ICMP)
  GetFirewallsFirewallOutbound({
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

  factory GetFirewallsFirewallOutbound.fromMap(Map<String, dynamic> map) {
    return GetFirewallsFirewallOutbound(
      action: map['action'] as String,
      ipv4s: (map['ipv4s'] as List).cast<String>(),
      ipv6s: (map['ipv6s'] as List).cast<String>(),
      label: map['label'] as String,
      ports: map['ports'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

