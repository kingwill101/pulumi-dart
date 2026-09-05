// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyIntrusionDetectionTrafficBypass {
  /// The description for this bypass traffic setting.
  final pulumi.Input<String?>? description;
  /// Specifies a list of destination IP addresses that shall be bypassed by intrusion detection.
  final pulumi.Input<List<String>?>? destinationAddresses;
  /// Specifies a list of destination IP groups that shall be bypassed by intrusion detection.
  final pulumi.Input<List<String>?>? destinationIpGroups;
  /// Specifies a list of destination IP ports that shall be bypassed by intrusion detection.
  final pulumi.Input<List<String>?>? destinationPorts;
  /// The name which should be used for this bypass traffic setting.
  final pulumi.Input<String> name;
  /// The protocols any of `ANY`, `TCP`, `ICMP`, `UDP` that shall be bypassed by intrusion detection.
  final pulumi.Input<String> protocol;
  /// Specifies a list of source addresses that shall be bypassed by intrusion detection.
  final pulumi.Input<List<String>?>? sourceAddresses;
  /// Specifies a list of source IP groups that shall be bypassed by intrusion detection.
  final pulumi.Input<List<String>?>? sourceIpGroups;

  /// Creates a new [FirewallPolicyIntrusionDetectionTrafficBypass].
  /// [description] The description for this bypass traffic setting.
  /// [destinationAddresses] Specifies a list of destination IP addresses that shall be bypassed by intrusion detection.
  /// [destinationIpGroups] Specifies a list of destination IP groups that shall be bypassed by intrusion detection.
  /// [destinationPorts] Specifies a list of destination IP ports that shall be bypassed by intrusion detection.
  /// [name] The name which should be used for this bypass traffic setting.
  /// [protocol] The protocols any of `ANY`, `TCP`, `ICMP`, `UDP` that shall be bypassed by intrusion detection.
  /// [sourceAddresses] Specifies a list of source addresses that shall be bypassed by intrusion detection.
  /// [sourceIpGroups] Specifies a list of source IP groups that shall be bypassed by intrusion detection.
  const FirewallPolicyIntrusionDetectionTrafficBypass({
    this.description,
    this.destinationAddresses,
    this.destinationIpGroups,
    this.destinationPorts,
    required this.name,
    required this.protocol,
    this.sourceAddresses,
    this.sourceIpGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'destinationIpGroups': ?destinationIpGroups,
      'destinationPorts': ?destinationPorts,
      'name': name,
      'protocol': protocol,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
    };
  }

  factory FirewallPolicyIntrusionDetectionTrafficBypass.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyIntrusionDetectionTrafficBypass(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAddresses: (() { final guardedValue = map['destinationAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationIpGroups: (() { final guardedValue = map['destinationIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationPorts: (() { final guardedValue = map['destinationPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpGroups: (() { final guardedValue = map['sourceIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
