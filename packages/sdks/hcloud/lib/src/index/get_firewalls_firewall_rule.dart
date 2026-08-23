// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallsFirewallRule {
  final pulumi.Input<String>? description;
  final pulumi.Input<List<String>>? destinationIps;
  final pulumi.Input<String> direction;
  final pulumi.Input<String>? port;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<List<String>>? sourceIps;

  /// Creates a new [GetFirewallsFirewallRule].
  /// [description] Optional.
  /// [destinationIps] Optional.
  /// [direction] Required.
  /// [port] Optional.
  /// [protocol] Optional.
  /// [sourceIps] Optional.
  const GetFirewallsFirewallRule({
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

  factory GetFirewallsFirewallRule.fromMap(Map<String, dynamic> map) {
    return GetFirewallsFirewallRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationIps: (() { final guardedValue = map['destinationIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIps: (() { final guardedValue = map['sourceIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
