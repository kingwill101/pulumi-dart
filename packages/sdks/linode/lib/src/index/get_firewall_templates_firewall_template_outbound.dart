// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallTemplatesFirewallTemplateOutbound {
  final pulumi.Input<String> action;
  final pulumi.Input<String> description;
  final pulumi.Input<List<String>> ipv4s;
  final pulumi.Input<List<String>> ipv6s;
  final pulumi.Input<String> label;
  final pulumi.Input<String> ports;
  final pulumi.Input<String> protocol;

  /// Creates a new [GetFirewallTemplatesFirewallTemplateOutbound].
  /// [action] Required.
  /// [description] Required.
  /// [ipv4s] Required.
  /// [ipv6s] Required.
  /// [label] Required.
  /// [ports] Required.
  /// [protocol] Required.
  GetFirewallTemplatesFirewallTemplateOutbound({
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

  factory GetFirewallTemplatesFirewallTemplateOutbound.fromMap(Map<String, dynamic> map) {
    return GetFirewallTemplatesFirewallTemplateOutbound(
      action: (map['action'] as String).input(),
      description: (map['description'] as String).input(),
      ipv4s: ((map['ipv4s'] as List).cast<String>()).input(),
      ipv6s: ((map['ipv6s'] as List).cast<String>()).input(),
      label: (map['label'] as String).input(),
      ports: (map['ports'] as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

