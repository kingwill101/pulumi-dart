// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_user_rule_collection_args_doc}
/// Arguments for getUserRuleCollection.
/// {@endtemplate}
/// {@macro pulumi_network_get_user_rule_collection_args_doc}
class GetUserRuleCollectionArgs {
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager security Configuration rule collection.
  final pulumi.Input<String> ruleCollectionName;

  /// Creates a new [GetUserRuleCollectionArgs].
  /// [configurationName] The name of the network manager Security Configuration.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  GetUserRuleCollectionArgs({
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

  factory GetUserRuleCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetUserRuleCollectionArgs(
      configurationName: pulumi.Output.create<String>(map['configurationName'] as String),
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleCollectionName: pulumi.Output.create<String>(map['ruleCollectionName'] as String),
    );
  }
}

