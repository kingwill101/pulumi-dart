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
    required pulumi.Output<List<NetworkManagerRoutingGroupItem>> appliesTo,
    required pulumi.Output<String> configurationName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? disableBgpRoutePropagation,
    required pulumi.Output<String> networkManagerName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? ruleCollectionName,
  }) :
      appliesTo = pulumi.Input.asInput<List<NetworkManagerRoutingGroupItem>>(appliesTo),
      configurationName = pulumi.Input.asInput<String>(configurationName),
      description = pulumi.Input.asOptionalInput<String>(description),
      disableBgpRoutePropagation = pulumi.Input.asOptionalInput<String>(disableBgpRoutePropagation),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleCollectionName = pulumi.Input.asOptionalInput<String>(ruleCollectionName);

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
      appliesTo: pulumi.Output.create<List<NetworkManagerRoutingGroupItem>>(pulumi.Input.decodeList<NetworkManagerRoutingGroupItem>(map['appliesTo'], (value) => NetworkManagerRoutingGroupItem.fromMap((value as Map).cast<String, dynamic>()))),
      configurationName: pulumi.Output.create<String>(map['configurationName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disableBgpRoutePropagation: map['disableBgpRoutePropagation'] == null ? null : pulumi.Output.create<String>(map['disableBgpRoutePropagation'] as String),
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleCollectionName: map['ruleCollectionName'] == null ? null : pulumi.Output.create<String>(map['ruleCollectionName'] as String),
    );
  }
}

