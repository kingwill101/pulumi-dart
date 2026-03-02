// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallRule {
  /// (Optional, string) Description of the firewall rule
  final pulumi.Input<String>? description;
  /// (Required, List) List of CIDRs that are allowed within this Firewall Rule (when `direction` is `out`)
  final pulumi.Input<List<String>>? destinationIps;
  /// (Required, string) Direction of the Firewall Rule. `in`, `out`
  final pulumi.Input<String> direction;
  /// (Required, string) Port of the Firewall Rule. Required when `protocol` is `tcp` or `udp`
  final pulumi.Input<String>? port;
  /// (Required, string) Protocol of the Firewall Rule. `tcp`, `icmp`, `udp`, `gre`, `esp`
  final pulumi.Input<String>? protocol;
  /// (Required, List) List of CIDRs that are allowed within this Firewall Rule (when `direction` is `in`)
  final pulumi.Input<List<String>>? sourceIps;

  /// Creates a new [GetFirewallRule].
  /// [description] (Optional, string) Description of the firewall rule
  /// [destinationIps] (Required, List) List of CIDRs that are allowed within this Firewall Rule (when `direction` is `out`)
  /// [direction] (Required, string) Direction of the Firewall Rule. `in`, `out`
  /// [port] (Required, string) Port of the Firewall Rule. Required when `protocol` is `tcp` or `udp`
  /// [protocol] (Required, string) Protocol of the Firewall Rule. `tcp`, `icmp`, `udp`, `gre`, `esp`
  /// [sourceIps] (Required, List) List of CIDRs that are allowed within this Firewall Rule (when `direction` is `in`)
  GetFirewallRule({
    this.description,
    this.destinationIps,
    required this.direction,
    this.port,
    this.protocol,
    this.sourceIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationIps': ?destinationIps,
      'direction': direction,
      'port': ?port,
      'protocol': ?protocol,
      'sourceIps': ?sourceIps,
    };
  }

  factory GetFirewallRule.fromMap(Map<String, dynamic> map) {
    return GetFirewallRule(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationIps: map['destinationIps'] == null ? null : ((map['destinationIps'] as List).cast<String>()).input(),
      direction: (map['direction'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      sourceIps: map['sourceIps'] == null ? null : ((map['sourceIps'] as List).cast<String>()).input(),
    );
  }
}

