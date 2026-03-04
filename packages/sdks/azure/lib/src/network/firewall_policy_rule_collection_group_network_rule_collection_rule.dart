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

  factory FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRule(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationAddresses: (() {
        final guardedValue = map['destinationAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destinationFqdns: (() {
        final guardedValue = map['destinationFqdns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destinationIpGroups: (() {
        final guardedValue = map['destinationIpGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      destinationPorts: pulumi.Input.fromValue(
        (map['destinationPorts'] as List).cast<String>(),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      protocols: pulumi.Input.fromValue(
        (map['protocols'] as List).cast<String>(),
      ),
      sourceAddresses: (() {
        final guardedValue = map['sourceAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      sourceIpGroups: (() {
        final guardedValue = map['sourceIpGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
