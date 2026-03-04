// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallRule {
  /// Description of the firewall rule
  final pulumi.Input<String>? description;

  /// List of IPs or CIDRs that are allowed within this Firewall Rule (when `direction`
  /// is `out`)
  final pulumi.Input<List<String>>? destinationIps;

  /// Direction of the Firewall Rule. `in`
  final pulumi.Input<String> direction;

  /// Port of the Firewall Rule. Required when `protocol` is `tcp` or `udp`. You can use `any`
  /// to allow all ports for the specific protocol. Port ranges are also possible: `80-85` allows all ports between 80 and 85.
  final pulumi.Input<String>? port;

  /// Protocol of the Firewall Rule. `tcp`, `icmp`, `udp`, `gre`, `esp`
  final pulumi.Input<String> protocol;

  /// List of IPs or CIDRs that are allowed within this Firewall Rule (when `direction`
  /// is `in`)
  final pulumi.Input<List<String>>? sourceIps;

  /// Creates a new [FirewallRule].
  /// [description] Description of the firewall rule
  /// [destinationIps] List of IPs or CIDRs that are allowed within this Firewall Rule (when `direction`
  /// [direction] Direction of the Firewall Rule. `in`
  /// [port] Port of the Firewall Rule. Required when `protocol` is `tcp` or `udp`. You can use `any`
  /// [protocol] Protocol of the Firewall Rule. `tcp`, `icmp`, `udp`, `gre`, `esp`
  /// [sourceIps] List of IPs or CIDRs that are allowed within this Firewall Rule (when `direction`
  FirewallRule({
    this.description,
    this.destinationIps,
    required this.direction,
    this.port,
    required this.protocol,
    this.sourceIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationIps': ?destinationIps,
      'direction': direction,
      'port': ?port,
      'protocol': protocol,
      'sourceIps': ?sourceIps,
    };
  }

  factory FirewallRule.fromMap(Map<String, dynamic> map) {
    return FirewallRule(
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
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      sourceIps: (() {
        final guardedValue = map['sourceIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
