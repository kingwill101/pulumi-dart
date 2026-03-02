// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallOutbound {
  /// Controls whether traffic is accepted or dropped by this rule. Overrides the Firewall's inbound_policy if this is an inbound rule, or the outbound_policy if this is an outbound rule.
  final pulumi.Input<String> action;
  /// Used to describe this rule. For display purposes only.
  final pulumi.Input<String>? description;
  /// A list of CIDR blocks or 0.0.0.0/0 (to allow all) this rule applies to.
  final pulumi.Input<List<String>>? ipv4s;
  /// A list of IPv6 addresses or networks this rule applies to.
  final pulumi.Input<List<String>>? ipv6s;
  /// This Firewall's unique label.
  final pulumi.Input<String> label;
  /// A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
  final pulumi.Input<String>? ports;
  /// The network protocol this rule controls.
  final pulumi.Input<String> protocol;

  /// Creates a new [FirewallOutbound].
  /// [action] Controls whether traffic is accepted or dropped by this rule. Overrides the Firewall's inbound_policy if this is an inbound rule, or the outbound_policy if this is an outbound rule.
  /// [description] Used to describe this rule. For display purposes only.
  /// [ipv4s] A list of CIDR blocks or 0.0.0.0/0 (to allow all) this rule applies to.
  /// [ipv6s] A list of IPv6 addresses or networks this rule applies to.
  /// [label] This Firewall's unique label.
  /// [ports] A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
  /// [protocol] The network protocol this rule controls.
  FirewallOutbound({
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

  factory FirewallOutbound.fromMap(Map<String, dynamic> map) {
    return FirewallOutbound(
      action: (map['action'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ipv4s: map['ipv4s'] == null ? null : ((map['ipv4s']! as List).cast<String>()).input(),
      ipv6s: map['ipv6s'] == null ? null : ((map['ipv6s']! as List).cast<String>()).input(),
      label: (map['label'] as String).input(),
      ports: map['ports'] == null ? null : (map['ports']! as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

