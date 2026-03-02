// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule {
  final pulumi.Input<String>? description;
  final pulumi.Input<List<String>>? destinationAddresses;
  final pulumi.Input<List<String>>? destinationFqdns;
  /// Specifies a list of destination IP groups.
  final pulumi.Input<List<String>>? destinationIpGroups;
  final pulumi.Input<List<String>> destinationPorts;
  /// The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> protocols;
  final pulumi.Input<List<String>>? sourceAddresses;
  final pulumi.Input<List<String>>? sourceIpGroups;

  /// Creates a new [FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule].
  /// [description] Optional.
  /// [destinationAddresses] Optional.
  /// [destinationFqdns] Optional.
  /// [destinationIpGroups] Specifies a list of destination IP groups.
  /// [destinationPorts] Required.
  /// [name] The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  /// [protocols] Required.
  /// [sourceAddresses] Optional.
  /// [sourceIpGroups] Optional.
  FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule({
    this.description,
    this.destinationAddresses,
    this.destinationFqdns,
    this.destinationIpGroups,
    required this.destinationPorts,
    required this.name,
    required this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'destinationFqdns': ?destinationFqdns,
      'destinationIpGroups': ?destinationIpGroups,
      'destinationPorts': destinationPorts,
      'name': name,
      'protocols': protocols,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
    };
  }

  factory FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationAddresses: map['destinationAddresses'] == null ? null : ((map['destinationAddresses'] as List).cast<String>()).input(),
      destinationFqdns: map['destinationFqdns'] == null ? null : ((map['destinationFqdns'] as List).cast<String>()).input(),
      destinationIpGroups: map['destinationIpGroups'] == null ? null : ((map['destinationIpGroups'] as List).cast<String>()).input(),
      destinationPorts: ((map['destinationPorts'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      protocols: ((map['protocols'] as List).cast<String>()).input(),
      sourceAddresses: map['sourceAddresses'] == null ? null : ((map['sourceAddresses'] as List).cast<String>()).input(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : ((map['sourceIpGroups'] as List).cast<String>()).input(),
    );
  }
}

