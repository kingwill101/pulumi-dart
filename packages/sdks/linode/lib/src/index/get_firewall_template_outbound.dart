// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallTemplateOutbound {
  final pulumi.Input<String> action;
  final pulumi.Input<String> description;
  final pulumi.Input<List<String>> ipv4s;
  final pulumi.Input<List<String>> ipv6s;
  final pulumi.Input<String> label;
  final pulumi.Input<String> ports;
  final pulumi.Input<String> protocol;

  /// Creates a new [GetFirewallTemplateOutbound].
  /// [action] Required.
  /// [description] Required.
  /// [ipv4s] Required.
  /// [ipv6s] Required.
  /// [label] Required.
  /// [ports] Required.
  /// [protocol] Required.
  GetFirewallTemplateOutbound({
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

  factory GetFirewallTemplateOutbound.fromMap(Map<String, dynamic> map) {
    return GetFirewallTemplateOutbound(
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

