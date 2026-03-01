// ignore_for_file: unused_element, unnecessary_cast


class FirewallInbound {
  /// Controls whether traffic is accepted or dropped by this rule (`ACCEPT`, `DROP`). Overrides the Firewall’s inbound_policy if this is an inbound rule, or the outbound_policy if this is an outbound rule.
  final String action;
  /// Used to describe this rule. For display purposes only.
  final String? description;
  /// A list of IPv4 addresses or networks. Must be in IP/mask (CIDR) format.
  final List<String>? ipv4s;
  /// A list of IPv6 addresses or networks. Must be in IP/mask (CIDR) format.
  final List<String>? ipv6s;
  /// Used to identify this rule. For display purposes only.
  final String label;
  /// A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
  final String? ports;
  /// The network protocol this rule controls. (`TCP`, `UDP`, `ICMP`)
  final String protocol;

  /// Creates a new [FirewallInbound].
  /// [action] Controls whether traffic is accepted or dropped by this rule (`ACCEPT`, `DROP`). Overrides the Firewall’s inbound_policy if this is an inbound rule, or the outbound_policy if this is an outbound rule.
  /// [description] Used to describe this rule. For display purposes only.
  /// [ipv4s] A list of IPv4 addresses or networks. Must be in IP/mask (CIDR) format.
  /// [ipv6s] A list of IPv6 addresses or networks. Must be in IP/mask (CIDR) format.
  /// [label] Used to identify this rule. For display purposes only.
  /// [ports] A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
  /// [protocol] The network protocol this rule controls. (`TCP`, `UDP`, `ICMP`)
  FirewallInbound({
    required this.action,
    this.description,
    this.ipv4s,
    this.ipv6s,
    required this.label,
    this.ports,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'ipv4s': ?ipv4s,
      'ipv6s': ?ipv6s,
      'label': label,
      'ports': ?ports,
      'protocol': protocol,
    };
  }

  factory FirewallInbound.fromMap(Map<String, dynamic> map) {
    return FirewallInbound(
      action: map['action'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      ipv4s: map['ipv4s'] == null ? null : (map['ipv4s'] as List).cast<String>(),
      ipv6s: map['ipv6s'] == null ? null : (map['ipv6s'] as List).cast<String>(),
      label: map['label'] as String,
      ports: map['ports'] == null ? null : map['ports'] as String,
      protocol: map['protocol'] as String,
    );
  }
}

