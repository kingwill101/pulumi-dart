// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyRuleCollectionGroupNatRuleCollectionRule {
  final pulumi.Input<String?>? description;
  /// The destination IP address (including CIDR).
  final pulumi.Input<String?>? destinationAddress;
  final pulumi.Input<String?>? destinationPorts;
  /// The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> protocols;
  final pulumi.Input<List<String>?>? sourceAddresses;
  final pulumi.Input<List<String>?>? sourceIpGroups;
  /// Specifies the translated address.
  final pulumi.Input<String?>? translatedAddress;
  /// Specifies the translated FQDN.
  ///
  /// &gt; **Note:** Exactly one of `translatedAddress` and `translatedFqdn` should be set.
  final pulumi.Input<String?>? translatedFqdn;
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
  const FirewallPolicyRuleCollectionGroupNatRuleCollectionRule({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAddress: (() { final guardedValue = map['destinationAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPorts: (() { final guardedValue = map['destinationPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocols: pulumi.Input.fromValue((map['protocols'] as List).cast<String>()),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpGroups: (() { final guardedValue = map['sourceIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      translatedAddress: (() { final guardedValue = map['translatedAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      translatedFqdn: (() { final guardedValue = map['translatedFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      translatedPort: pulumi.Input.fromValue((map['translatedPort'] as num).toInt()),
    );
  }
}
