// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Intrusion detection bypass traffic specification.
class FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsResponse {
  /// Description of the bypass traffic rule.
  final pulumi.Input<String>? description;
  /// List of destination IP addresses or ranges for this rule.
  final pulumi.Input<List<String>>? destinationAddresses;
  /// List of destination IpGroups for this rule.
  final pulumi.Input<List<String>>? destinationIpGroups;
  /// List of destination ports or ranges.
  final pulumi.Input<List<String>>? destinationPorts;
  /// Name of the bypass traffic rule.
  final pulumi.Input<String>? name;
  /// The rule bypass protocol.
  final pulumi.Input<String>? protocol;
  /// List of source IP addresses or ranges for this rule.
  final pulumi.Input<List<String>>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final pulumi.Input<List<String>>? sourceIpGroups;

  /// Creates a new [FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsResponse].
  /// [description] Description of the bypass traffic rule.
  /// [destinationAddresses] List of destination IP addresses or ranges for this rule.
  /// [destinationIpGroups] List of destination IpGroups for this rule.
  /// [destinationPorts] List of destination ports or ranges.
  /// [name] Name of the bypass traffic rule.
  /// [protocol] The rule bypass protocol.
  /// [sourceAddresses] List of source IP addresses or ranges for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsResponse({
    this.description,
    this.destinationAddresses,
    this.destinationIpGroups,
    this.destinationPorts,
    this.name,
    this.protocol,
    this.sourceAddresses,
    this.sourceIpGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'destinationIpGroups': ?destinationIpGroups,
      'destinationPorts': ?destinationPorts,
      'name': ?name,
      'protocol': ?protocol,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
    };
  }

  factory FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationAddresses: map['destinationAddresses'] == null ? null : ((map['destinationAddresses'] as List).cast<String>()).input(),
      destinationIpGroups: map['destinationIpGroups'] == null ? null : ((map['destinationIpGroups'] as List).cast<String>()).input(),
      destinationPorts: map['destinationPorts'] == null ? null : ((map['destinationPorts'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      sourceAddresses: map['sourceAddresses'] == null ? null : ((map['sourceAddresses'] as List).cast<String>()).input(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : ((map['sourceIpGroups'] as List).cast<String>()).input(),
    );
  }
}

