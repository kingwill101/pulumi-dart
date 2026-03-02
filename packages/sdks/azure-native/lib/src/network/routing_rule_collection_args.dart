// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_routing_group_item.dart';

/// {@template pulumi_network_routing_rule_collection_args_doc}
/// The set of arguments for RoutingRuleCollection.
/// {@endtemplate}
/// {@macro pulumi_network_routing_rule_collection_args_doc}
class RoutingRuleCollectionArgs {
  /// Groups for configuration
  final pulumi.Input<List<NetworkManagerRoutingGroupItem>> appliesTo;
  /// The name of the network manager Routing Configuration.
  final pulumi.Input<String> configurationName;
  /// A description of the routing rule collection.
  final pulumi.Input<String>? description;
  /// Determines whether BGP route propagation is enabled. Defaults to true.
  final pulumi.Input<String>? disableBgpRoutePropagation;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager routing Configuration rule collection.
  final pulumi.Input<String>? ruleCollectionName;

  /// Creates a new [RoutingRuleCollectionArgs].
  /// [appliesTo] Groups for configuration
  /// [configurationName] The name of the network manager Routing Configuration.
  /// [description] A description of the routing rule collection.
  /// [disableBgpRoutePropagation] Determines whether BGP route propagation is enabled. Defaults to true.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleCollectionName] The name of the network manager routing Configuration rule collection.
  RoutingRuleCollectionArgs({
    required this.appliesTo,
    required this.configurationName,
    this.description,
    this.disableBgpRoutePropagation,
    required this.networkManagerName,
    required this.resourceGroupName,
    this.ruleCollectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesTo': pulumi.Input.mapInputValue<List<NetworkManagerRoutingGroupItem>, List<Map<String, dynamic>>>(appliesTo, (value) => pulumi.Input.encodeList<NetworkManagerRoutingGroupItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationName': configurationName,
      'description': ?description,
      'disableBgpRoutePropagation': ?disableBgpRoutePropagation,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ?ruleCollectionName,
    };
  }

  factory RoutingRuleCollectionArgs.fromMap(Map<String, dynamic> map) {
    return RoutingRuleCollectionArgs(
      appliesTo: (pulumi.Input.decodeList<NetworkManagerRoutingGroupItem>(map['appliesTo'], (value) => NetworkManagerRoutingGroupItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configurationName: (map['configurationName'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disableBgpRoutePropagation: map['disableBgpRoutePropagation'] == null ? null : (map['disableBgpRoutePropagation']! as String).input(),
      networkManagerName: (map['networkManagerName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleCollectionName: map['ruleCollectionName'] == null ? null : (map['ruleCollectionName']! as String).input(),
    );
  }
}

