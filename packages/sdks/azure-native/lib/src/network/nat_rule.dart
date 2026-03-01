// ignore_for_file: unused_element, unnecessary_cast


/// Rule of type nat.
class NatRule {
  /// Description of the rule.
  final String? description;
  /// List of destination IP addresses or Service Tags.
  final List<String>? destinationAddresses;
  /// List of destination ports.
  final List<String>? destinationPorts;
  /// Array of FirewallPolicyRuleNetworkProtocols.
  final List<String>? ipProtocols;
  /// Name of the rule.
  final String? name;
  /// Rule Type.
  /// Expected value is 'NatRule'.
  final String ruleType;
  /// List of source IP addresses for this rule.
  final List<String>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final List<String>? sourceIpGroups;
  /// The translated address for this NAT rule.
  final String? translatedAddress;
  /// The translated FQDN for this NAT rule.
  final String? translatedFqdn;
  /// The translated port for this NAT rule.
  final String? translatedPort;

  /// Creates a new [NatRule].
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
  NatRule({
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

  factory NatRule.fromMap(Map<String, dynamic> map) {
    return NatRule(
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddresses: map['destinationAddresses'] == null ? null : (map['destinationAddresses'] as List).cast<String>(),
      destinationPorts: map['destinationPorts'] == null ? null : (map['destinationPorts'] as List).cast<String>(),
      ipProtocols: map['ipProtocols'] == null ? null : (map['ipProtocols'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      ruleType: map['ruleType'] as String,
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : (map['sourceIpGroups'] as List).cast<String>(),
      translatedAddress: map['translatedAddress'] == null ? null : map['translatedAddress'] as String,
      translatedFqdn: map['translatedFqdn'] == null ? null : map['translatedFqdn'] as String,
      translatedPort: map['translatedPort'] == null ? null : map['translatedPort'] as String,
    );
  }
}

