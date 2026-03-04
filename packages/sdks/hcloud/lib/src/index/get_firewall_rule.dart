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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationIps: (() {
        final guardedValue = map['destinationIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceIps: (() {
        final guardedValue = map['sourceIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
