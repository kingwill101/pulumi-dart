// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeBalancerFirewallInbound {
  /// Controls whether traffic is accepted or dropped by this rule. Overrides the Firewall’s inbound_policy if this is an inbound rule, or the outbound_policy if this is an outbound rule.
  final pulumi.Input<String> action;
  final pulumi.Input<String> description;
  /// A list of IPv4 addresses or networks. Must be in IP/mask format.
  final pulumi.Input<List<String>> ipv4s;
  /// A list of IPv6 addresses or networks. Must be in IP/mask format.
  final pulumi.Input<List<String>> ipv6s;
  /// The label of the Linode NodeBalancer
  final pulumi.Input<String> label;
  /// A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
  final pulumi.Input<String> ports;
  /// The network protocol this rule controls. (`TCP`, `UDP`, `ICMP`)
  final pulumi.Input<String> protocol;

  /// Creates a new [NodeBalancerFirewallInbound].
  /// [action] Controls whether traffic is accepted or dropped by this rule. Overrides the Firewall’s inbound_policy if this is an inbound rule, or the outbound_policy if this is an outbound rule.
  /// [description] Required.
  /// [ipv4s] A list of IPv4 addresses or networks. Must be in IP/mask format.
  /// [ipv6s] A list of IPv6 addresses or networks. Must be in IP/mask format.
  /// [label] The label of the Linode NodeBalancer
  /// [ports] A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
  /// [protocol] The network protocol this rule controls. (`TCP`, `UDP`, `ICMP`)
  NodeBalancerFirewallInbound({
    required this.action,
    required this.description,
    required this.ipv4s,
    required this.ipv6s,
    required this.label,
    required this.ports,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': description,
      'ipv4s': ipv4s,
      'ipv6s': ipv6s,
      'label': label,
      'ports': ports,
      'protocol': protocol,
    };
  }

  factory NodeBalancerFirewallInbound.fromMap(Map<String, dynamic> map) {
    return NodeBalancerFirewallInbound(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      ipv4s: pulumi.Input.fromValue((map['ipv4s'] as List).cast<String>()),
      ipv6s: pulumi.Input.fromValue((map['ipv6s'] as List).cast<String>()),
      label: pulumi.Input.fromValue(map['label'] as String),
      ports: pulumi.Input.fromValue(map['ports'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
    );
  }
}

