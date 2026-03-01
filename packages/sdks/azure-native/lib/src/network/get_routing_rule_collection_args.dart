// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_routing_rule_collection_args_doc}
/// Arguments for getRoutingRuleCollection.
/// {@endtemplate}
/// {@macro pulumi_network_get_routing_rule_collection_args_doc}
class GetRoutingRuleCollectionArgs {
  /// The name of the network manager Routing Configuration.
  final pulumi.Input<String> configurationName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager routing Configuration rule collection.
  final pulumi.Input<String> ruleCollectionName;

  /// Creates a new [GetRoutingRuleCollectionArgs].
  /// [configurationName] The name of the network manager Routing Configuration.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleCollectionName] The name of the network manager routing Configuration rule collection.
  GetRoutingRuleCollectionArgs({
    required pulumi.Output<String> configurationName,
    required pulumi.Output<String> networkManagerName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleCollectionName,
  }) :
      configurationName = pulumi.Input.asInput<String>(configurationName),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleCollectionName = pulumi.Input.asInput<String>(ruleCollectionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ruleCollectionName,
    };
  }

  factory GetRoutingRuleCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetRoutingRuleCollectionArgs(
      configurationName: pulumi.Output.create<String>(map['configurationName'] as String),
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleCollectionName: pulumi.Output.create<String>(map['ruleCollectionName'] as String),
    );
  }
}

