// ignore_for_file: unused_element, unnecessary_cast


class FirewallPolicyRuleCollectionGroupNatRuleCollectionRule {
  final String? description;
  /// The destination IP address (including CIDR).
  final String? destinationAddress;
  final String? destinationPorts;
  /// The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  final String name;
  final List<String> protocols;
  final List<String>? sourceAddresses;
  final List<String>? sourceIpGroups;
  /// Specifies the translated address.
  final String? translatedAddress;
  /// Specifies the translated FQDN.
  ///
  /// > **Note:** Exactly one of `translated_address` and `translated_fqdn` should be set.
  final String? translatedFqdn;
  /// Specifies the translated port.
  final int translatedPort;

  /// Creates a new [FirewallPolicyRuleCollectionGroupNatRuleCollectionRule].
  /// [description] Optional.
  /// [destinationAddress] The destination IP address (including CIDR).
  /// [destinationPorts] Optional.
  /// [name] The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  /// [protocols] Required.
  /// [sourceAddresses] Optional.
  /// [sourceIpGroups] Optional.
  /// [translatedAddress] Specifies the translated address.
  /// [translatedFqdn] Specifies the translated FQDN.
  /// [translatedPort] Specifies the translated port.
  FirewallPolicyRuleCollectionGroupNatRuleCollectionRule({
    this.description,
    this.destinationAddress,
    this.destinationPorts,
    required this.name,
    required this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.translatedAddress,
    this.translatedFqdn,
    required this.translatedPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddress': ?destinationAddress,
      'destinationPorts': ?destinationPorts,
      'name': name,
      'protocols': protocols,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'translatedAddress': ?translatedAddress,
      'translatedFqdn': ?translatedFqdn,
      'translatedPort': translatedPort,
    };
  }

  factory FirewallPolicyRuleCollectionGroupNatRuleCollectionRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupNatRuleCollectionRule(
      description: map['description'] == null ? null : map['description'] as String,
      destinationAddress: map['destinationAddress'] == null ? null : map['destinationAddress'] as String,
      destinationPorts: map['destinationPorts'] == null ? null : map['destinationPorts'] as String,
      name: map['name'] as String,
      protocols: (map['protocols'] as List).cast<String>(),
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : (map['sourceIpGroups'] as List).cast<String>(),
      translatedAddress: map['translatedAddress'] == null ? null : map['translatedAddress'] as String,
      translatedFqdn: map['translatedFqdn'] == null ? null : map['translatedFqdn'] as String,
      translatedPort: map['translatedPort'] as int,
    );
  }
}

