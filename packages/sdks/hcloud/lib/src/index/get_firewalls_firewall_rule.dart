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
  GetFirewallsFirewallRule({
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destinationIps: map['destinationIps'] == null ? null : ((map['destinationIps']! as List).cast<String>()).input(),
      direction: (map['direction'] as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      sourceIps: map['sourceIps'] == null ? null : ((map['sourceIps']! as List).cast<String>()).input(),
    );
  }
}

