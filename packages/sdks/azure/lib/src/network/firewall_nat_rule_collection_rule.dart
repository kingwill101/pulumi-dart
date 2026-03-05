// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallNatRuleCollectionRule {
  /// Specifies a description for the rule.
  final pulumi.Input<String>? description;
  /// A list of destination IP addresses and/or IP ranges.
  final pulumi.Input<List<String>> destinationAddresses;
  /// A list of destination ports.
  final pulumi.Input<List<String>> destinationPorts;
  /// Specifies the name of the rule.
  final pulumi.Input<String> name;
  /// A list of protocols. Possible values are `Any`, `ICMP`, `TCP` and `UDP`. If `action` is `Dnat`, protocols can only be `TCP` and `UDP`.
  final pulumi.Input<List<String>> protocols;
  /// A list of source IP addresses and/or IP ranges.
  final pulumi.Input<List<String>>? sourceAddresses;
  /// A list of source IP Group IDs for the rule.
  ///
  /// &gt; **Note:** At least one of `source_addresses` and `source_ip_groups` must be specified for a rule.
  final pulumi.Input<List<String>>? sourceIpGroups;
  /// The address of the service behind the Firewall.
  final pulumi.Input<String> translatedAddress;
  /// The port of the service behind the Firewall.
  final pulumi.Input<String> translatedPort;

  /// Creates a new [FirewallNatRuleCollectionRule].
  /// [description] Specifies a description for the rule.
  /// [destinationAddresses] A list of destination IP addresses and/or IP ranges.
  /// [destinationPorts] A list of destination ports.
  /// [name] Specifies the name of the rule.
  /// [protocols] A list of protocols. Possible values are `Any`, `ICMP`, `TCP` and `UDP`. If `action` is `Dnat`, protocols can only be `TCP` and `UDP`.
  /// [sourceAddresses] A list of source IP addresses and/or IP ranges.
  /// [sourceIpGroups] A list of source IP Group IDs for the rule.
  /// [translatedAddress] The address of the service behind the Firewall.
  /// [translatedPort] The port of the service behind the Firewall.
  FirewallNatRuleCollectionRule({
    this.description,
    required this.destinationAddresses,
    required this.destinationPorts,
    required this.name,
    required this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
    required this.translatedAddress,
    required this.translatedPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': destinationAddresses,
      'destinationPorts': destinationPorts,
      'name': name,
      'protocols': protocols,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'translatedAddress': translatedAddress,
      'translatedPort': translatedPort,
    };
  }

  factory FirewallNatRuleCollectionRule.fromMap(Map<String, dynamic> map) {
    return FirewallNatRuleCollectionRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAddresses: pulumi.Input.fromValue((map['destinationAddresses'] as List).cast<String>()),
      destinationPorts: pulumi.Input.fromValue((map['destinationPorts'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocols: pulumi.Input.fromValue((map['protocols'] as List).cast<String>()),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpGroups: (() { final guardedValue = map['sourceIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      translatedAddress: pulumi.Input.fromValue(map['translatedAddress'] as String),
      translatedPort: pulumi.Input.fromValue(map['translatedPort'] as String),
    );
  }
}

