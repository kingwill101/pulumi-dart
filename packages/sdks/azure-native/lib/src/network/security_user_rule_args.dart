// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item.dart';

/// {@template pulumi_network_security_user_rule_args_doc}
/// The set of arguments for SecurityUserRule.
/// {@endtemplate}
/// {@macro pulumi_network_security_user_rule_args_doc}
class SecurityUserRuleArgs {
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;
  /// A description for this rule.
  final pulumi.Input<String>? description;
  /// The destination port ranges.
  final pulumi.Input<List<String>>? destinationPortRanges;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final pulumi.Input<List<AddressPrefixItem>>? destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound.
  final pulumi.Input<String> direction;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// Network protocol this rule applies to.
  final pulumi.Input<String> protocol;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager security Configuration rule collection.
  final pulumi.Input<String> ruleCollectionName;
  /// The name of the rule.
  final pulumi.Input<String>? ruleName;
  /// The source port ranges.
  final pulumi.Input<List<String>>? sourcePortRanges;
  /// The CIDR or source IP ranges.
  final pulumi.Input<List<AddressPrefixItem>>? sources;

  /// Creates a new [SecurityUserRuleArgs].
  /// [configurationName] The name of the network manager Security Configuration.
  /// [description] A description for this rule.
  /// [destinationPortRanges] The destination port ranges.
  /// [destinations] The destination address prefixes. CIDR or destination IP ranges.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound.
  /// [networkManagerName] The name of the network manager.
  /// [protocol] Network protocol this rule applies to.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  /// [ruleName] The name of the rule.
  /// [sourcePortRanges] The source port ranges.
  /// [sources] The CIDR or source IP ranges.
  SecurityUserRuleArgs({
    required this.configurationName,
    this.description,
    this.destinationPortRanges,
    this.destinations,
    required this.direction,
    required this.networkManagerName,
    required this.protocol,
    required this.resourceGroupName,
    required this.ruleCollectionName,
    this.ruleName,
    this.sourcePortRanges,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'description': ?description,
      'destinationPortRanges': ?destinationPortRanges,
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<AddressPrefixItem>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<AddressPrefixItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'direction': direction,
      'networkManagerName': networkManagerName,
      'protocol': protocol,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ruleCollectionName,
      'ruleName': ?ruleName,
      'sourcePortRanges': ?sourcePortRanges,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AddressPrefixItem>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AddressPrefixItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityUserRuleArgs.fromMap(Map<String, dynamic> map) {
    return SecurityUserRuleArgs(
      configurationName: (map['configurationName'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destinationPortRanges: map['destinationPortRanges'] == null ? null : ((map['destinationPortRanges']! as List).cast<String>()).input(),
      destinations: map['destinations'] == null ? null : (pulumi.Input.decodeList<AddressPrefixItem>(map['destinations']!, (value) => AddressPrefixItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      direction: (map['direction'] as String).input(),
      networkManagerName: (map['networkManagerName'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleCollectionName: (map['ruleCollectionName'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
      sourcePortRanges: map['sourcePortRanges'] == null ? null : ((map['sourcePortRanges']! as List).cast<String>()).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<AddressPrefixItem>(map['sources']!, (value) => AddressPrefixItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

