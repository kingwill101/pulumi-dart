// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyRuleCollectionGroupNatRuleCollectionRule {
  final pulumi.Input<String>? description;
  /// The destination IP address (including CIDR).
  final pulumi.Input<String>? destinationAddress;
  final pulumi.Input<String>? destinationPorts;
  /// The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> protocols;
  final pulumi.Input<List<String>>? sourceAddresses;
  final pulumi.Input<List<String>>? sourceIpGroups;
  /// Specifies the translated address.
  final pulumi.Input<String>? translatedAddress;
  /// Specifies the translated FQDN.
  ///
  /// > **Note:** Exactly one of `translated_address` and `translated_fqdn` should be set.
  final pulumi.Input<String>? translatedFqdn;
  /// Specifies the translated port.
  final pulumi.Input<int> translatedPort;

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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destinationAddress: map['destinationAddress'] == null ? null : (map['destinationAddress']! as String).input(),
      destinationPorts: map['destinationPorts'] == null ? null : (map['destinationPorts']! as String).input(),
      name: (map['name'] as String).input(),
      protocols: ((map['protocols'] as List).cast<String>()).input(),
      sourceAddresses: map['sourceAddresses'] == null ? null : ((map['sourceAddresses']! as List).cast<String>()).input(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : ((map['sourceIpGroups']! as List).cast<String>()).input(),
      translatedAddress: map['translatedAddress'] == null ? null : (map['translatedAddress']! as String).input(),
      translatedFqdn: map['translatedFqdn'] == null ? null : (map['translatedFqdn']! as String).input(),
      translatedPort: (map['translatedPort'] as int).input(),
    );
  }
}

