// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallNetworkRuleCollectionRule {
  /// Specifies a description for the rule.
  final pulumi.Input<String>? description;
  /// Either a list of destination IP addresses and/or IP ranges, or a list of destination [Service Tags](https://docs.microsoft.com/azure/virtual-network/service-tags-overview#available-service-tags).
  final pulumi.Input<List<String>>? destinationAddresses;
  /// A list of destination FQDNS for the rule.
  ///
  /// > **Note:** [You must enable DNS Proxy to use FQDNs in your network rules](https://docs.microsoft.com/azure/firewall/fqdn-filtering-network-rules).
  ///
  /// > **Note:** At least one of `destination_addresses`, `destination_ip_groups` and `destination_fqdns` must be specified for a rule.
  final pulumi.Input<List<String>>? destinationFqdns;
  /// A list of destination IP Group IDs for the rule.
  final pulumi.Input<List<String>>? destinationIpGroups;
  /// A list of destination ports.
  final pulumi.Input<List<String>> destinationPorts;
  /// Specifies the name of the rule.
  final pulumi.Input<String> name;
  /// A list of protocols. Possible values are `Any`, `ICMP`, `TCP` and `UDP`.
  final pulumi.Input<List<String>> protocols;
  /// A list of source IP addresses and/or IP ranges.
  final pulumi.Input<List<String>>? sourceAddresses;
  /// A list of IP Group IDs for the rule.
  ///
  /// > **Note:** At least one of `source_addresses` and `source_ip_groups` must be specified for a rule.
  final pulumi.Input<List<String>>? sourceIpGroups;

  /// Creates a new [FirewallNetworkRuleCollectionRule].
  /// [description] Specifies a description for the rule.
  /// [destinationAddresses] Either a list of destination IP addresses and/or IP ranges, or a list of destination [Service Tags](https://docs.microsoft.com/azure/virtual-network/service-tags-overview#available-service-tags).
  /// [destinationFqdns] A list of destination FQDNS for the rule.
  /// [destinationIpGroups] A list of destination IP Group IDs for the rule.
  /// [destinationPorts] A list of destination ports.
  /// [name] Specifies the name of the rule.
  /// [protocols] A list of protocols. Possible values are `Any`, `ICMP`, `TCP` and `UDP`.
  /// [sourceAddresses] A list of source IP addresses and/or IP ranges.
  /// [sourceIpGroups] A list of IP Group IDs for the rule.
  FirewallNetworkRuleCollectionRule({
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

  factory FirewallNetworkRuleCollectionRule.fromMap(Map<String, dynamic> map) {
    return FirewallNetworkRuleCollectionRule(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destinationAddresses: map['destinationAddresses'] == null ? null : ((map['destinationAddresses']! as List).cast<String>()).input(),
      destinationFqdns: map['destinationFqdns'] == null ? null : ((map['destinationFqdns']! as List).cast<String>()).input(),
      destinationIpGroups: map['destinationIpGroups'] == null ? null : ((map['destinationIpGroups']! as List).cast<String>()).input(),
      destinationPorts: ((map['destinationPorts'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      protocols: ((map['protocols'] as List).cast<String>()).input(),
      sourceAddresses: map['sourceAddresses'] == null ? null : ((map['sourceAddresses']! as List).cast<String>()).input(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : ((map['sourceIpGroups']! as List).cast<String>()).input(),
    );
  }
}

