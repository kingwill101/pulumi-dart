// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rule of type nat.
class NatRuleResponse {
  /// Description of the rule.
  final pulumi.Input<String>? description;
  /// List of destination IP addresses or Service Tags.
  final pulumi.Input<List<String>>? destinationAddresses;
  /// List of destination ports.
  final pulumi.Input<List<String>>? destinationPorts;
  /// Array of FirewallPolicyRuleNetworkProtocols.
  final pulumi.Input<List<String>>? ipProtocols;
  /// Name of the rule.
  final pulumi.Input<String>? name;
  /// Rule Type.
  /// Expected value is 'NatRule'.
  final pulumi.Input<String> ruleType;
  /// List of source IP addresses for this rule.
  final pulumi.Input<List<String>>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final pulumi.Input<List<String>>? sourceIpGroups;
  /// The translated address for this NAT rule.
  final pulumi.Input<String>? translatedAddress;
  /// The translated FQDN for this NAT rule.
  final pulumi.Input<String>? translatedFqdn;
  /// The translated port for this NAT rule.
  final pulumi.Input<String>? translatedPort;

  /// Creates a new [NatRuleResponse].
  /// [description] Description of the rule.
  /// [destinationAddresses] List of destination IP addresses or Service Tags.
  /// [destinationPorts] List of destination ports.
  /// [ipProtocols] Array of FirewallPolicyRuleNetworkProtocols.
  /// [name] Name of the rule.
  /// [ruleType] Rule Type.
  /// [sourceAddresses] List of source IP addresses for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  /// [translatedAddress] The translated address for this NAT rule.
  /// [translatedFqdn] The translated FQDN for this NAT rule.
  /// [translatedPort] The translated port for this NAT rule.
  NatRuleResponse({
    this.description,
    this.destinationAddresses,
    this.destinationPorts,
    this.ipProtocols,
    this.name,
    required this.ruleType,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.translatedAddress,
    this.translatedFqdn,
    this.translatedPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'destinationPorts': ?destinationPorts,
      'ipProtocols': ?ipProtocols,
      'name': ?name,
      'ruleType': ruleType,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'translatedAddress': ?translatedAddress,
      'translatedFqdn': ?translatedFqdn,
      'translatedPort': ?translatedPort,
    };
  }

  factory NatRuleResponse.fromMap(Map<String, dynamic> map) {
    return NatRuleResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationAddresses: map['destinationAddresses'] == null ? null : ((map['destinationAddresses'] as List).cast<String>()).input(),
      destinationPorts: map['destinationPorts'] == null ? null : ((map['destinationPorts'] as List).cast<String>()).input(),
      ipProtocols: map['ipProtocols'] == null ? null : ((map['ipProtocols'] as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ruleType: (map['ruleType'] as String).input(),
      sourceAddresses: map['sourceAddresses'] == null ? null : ((map['sourceAddresses'] as List).cast<String>()).input(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : ((map['sourceIpGroups'] as List).cast<String>()).input(),
      translatedAddress: map['translatedAddress'] == null ? null : (map['translatedAddress'] as String).input(),
      translatedFqdn: map['translatedFqdn'] == null ? null : (map['translatedFqdn'] as String).input(),
      translatedPort: map['translatedPort'] == null ? null : (map['translatedPort'] as String).input(),
    );
  }
}

