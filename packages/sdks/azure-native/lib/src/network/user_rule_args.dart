// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_prefix_item.dart';

/// {@template pulumi_network_user_rule_args_doc}
/// The set of arguments for UserRule.
/// {@endtemplate}
/// {@macro pulumi_network_user_rule_args_doc}
class UserRuleArgs {
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
  /// Whether the rule is custom or default.
  /// Expected value is 'Custom'.
  final pulumi.Input<String> kind;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// Network protocol this rule applies to.
  final pulumi.Input<String> protocol;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager security Configuration rule collection.
  final pulumi.Input<String> ruleCollectionName;
  /// The name of the rule.
  final pulumi.Input<String>? ruleName;
  /// The source port ranges.
  final pulumi.Input<List<String>>? sourcePortRanges;
  /// The CIDR or source IP ranges.
  final pulumi.Input<List<AddressPrefixItem>>? sources;

  /// Creates a new [UserRuleArgs].
  /// [configurationName] The name of the network manager Security Configuration.
  /// [description] A description for this rule.
  /// [destinationPortRanges] The destination port ranges.
  /// [destinations] The destination address prefixes. CIDR or destination IP ranges.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound.
  /// [kind] Whether the rule is custom or default.
  /// [networkManagerName] The name of the network manager.
  /// [protocol] Network protocol this rule applies to.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  /// [ruleName] The name of the rule.
  /// [sourcePortRanges] The source port ranges.
  /// [sources] The CIDR or source IP ranges.
  const UserRuleArgs({
    required this.configurationName,
    this.description,
    this.destinationPortRanges,
    this.destinations,
    required this.direction,
    required this.kind,
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
      'kind': kind,
      'networkManagerName': networkManagerName,
      'protocol': protocol,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ruleCollectionName,
      'ruleName': ?ruleName,
      'sourcePortRanges': ?sourcePortRanges,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AddressPrefixItem>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AddressPrefixItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory UserRuleArgs.fromMap(Map<String, dynamic> map) {
    return UserRuleArgs(
      configurationName: pulumi.Input.fromValue(map['configurationName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPortRanges: (() { final guardedValue = map['destinationPortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AddressPrefixItem>(guardedValue, (value) => AddressPrefixItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleCollectionName: pulumi.Input.fromValue(map['ruleCollectionName'] as String),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePortRanges: (() { final guardedValue = map['sourcePortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AddressPrefixItem>(guardedValue, (value) => AddressPrefixItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
