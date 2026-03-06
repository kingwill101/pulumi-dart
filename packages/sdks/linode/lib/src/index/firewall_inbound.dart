// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallInbound {
  /// Controls whether traffic is accepted or dropped by this rule (`ACCEPT`, `DROP`). Overrides the Firewall’s inbound_policy if this is an inbound rule, or the outbound_policy if this is an outbound rule.
  final pulumi.Input<String> action;
  /// Used to describe this rule. For display purposes only.
  final pulumi.Input<String>? description;
  /// A list of IPv4 addresses or networks. Must be in IP/mask (CIDR) format.
  final pulumi.Input<List<String>>? ipv4s;
  /// A list of IPv6 addresses or networks. Must be in IP/mask (CIDR) format.
  final pulumi.Input<List<String>>? ipv6s;
  /// Used to identify this rule. For display purposes only.
  final pulumi.Input<String> label;
  /// A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
  final pulumi.Input<String>? ports;
  /// The network protocol this rule controls. (`TCP`, `UDP`, `ICMP`)
  final pulumi.Input<String> protocol;

  /// Creates a new [FirewallInbound].
  /// [action] Controls whether traffic is accepted or dropped by this rule (`ACCEPT`, `DROP`). Overrides the Firewall’s inbound_policy if this is an inbound rule, or the outbound_policy if this is an outbound rule.
  /// [description] Used to describe this rule. For display purposes only.
  /// [ipv4s] A list of IPv4 addresses or networks. Must be in IP/mask (CIDR) format.
  /// [ipv6s] A list of IPv6 addresses or networks. Must be in IP/mask (CIDR) format.
  /// [label] Used to identify this rule. For display purposes only.
  /// [ports] A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
  /// [protocol] The network protocol this rule controls. (`TCP`, `UDP`, `ICMP`)
  const FirewallInbound({
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
      action: pulumi.Input.fromValue(map['action'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4s: (() { final guardedValue = map['ipv4s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6s: (() { final guardedValue = map['ipv6s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      ports: (() { final guardedValue = map['ports']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

