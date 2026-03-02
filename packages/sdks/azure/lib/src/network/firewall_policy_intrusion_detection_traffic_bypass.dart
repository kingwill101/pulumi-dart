// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyIntrusionDetectionTrafficBypass {
  /// The description for this bypass traffic setting.
  final pulumi.Input<String>? description;
  /// Specifies a list of destination IP addresses that shall be bypassed by intrusion detection.
  final pulumi.Input<List<String>>? destinationAddresses;
  /// Specifies a list of destination IP groups that shall be bypassed by intrusion detection.
  final pulumi.Input<List<String>>? destinationIpGroups;
  /// Specifies a list of destination IP ports that shall be bypassed by intrusion detection.
  final pulumi.Input<List<String>>? destinationPorts;
  /// The name which should be used for this bypass traffic setting.
  final pulumi.Input<String> name;
  /// The protocols any of `ANY`, `TCP`, `ICMP`, `UDP` that shall be bypassed by intrusion detection.
  final pulumi.Input<String> protocol;
  /// Specifies a list of source addresses that shall be bypassed by intrusion detection.
  final pulumi.Input<List<String>>? sourceAddresses;
  /// Specifies a list of source IP groups that shall be bypassed by intrusion detection.
  final pulumi.Input<List<String>>? sourceIpGroups;

  /// Creates a new [FirewallPolicyIntrusionDetectionTrafficBypass].
  /// [description] The description for this bypass traffic setting.
  /// [destinationAddresses] Specifies a list of destination IP addresses that shall be bypassed by intrusion detection.
  /// [destinationIpGroups] Specifies a list of destination IP groups that shall be bypassed by intrusion detection.
  /// [destinationPorts] Specifies a list of destination IP ports that shall be bypassed by intrusion detection.
  /// [name] The name which should be used for this bypass traffic setting.
  /// [protocol] The protocols any of `ANY`, `TCP`, `ICMP`, `UDP` that shall be bypassed by intrusion detection.
  /// [sourceAddresses] Specifies a list of source addresses that shall be bypassed by intrusion detection.
  /// [sourceIpGroups] Specifies a list of source IP groups that shall be bypassed by intrusion detection.
  FirewallPolicyIntrusionDetectionTrafficBypass({
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destinationAddresses: map['destinationAddresses'] == null ? null : ((map['destinationAddresses']! as List).cast<String>()).input(),
      destinationIpGroups: map['destinationIpGroups'] == null ? null : ((map['destinationIpGroups']! as List).cast<String>()).input(),
      destinationPorts: map['destinationPorts'] == null ? null : ((map['destinationPorts']! as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      sourceAddresses: map['sourceAddresses'] == null ? null : ((map['sourceAddresses']! as List).cast<String>()).input(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : ((map['sourceIpGroups']! as List).cast<String>()).input(),
    );
  }
}

