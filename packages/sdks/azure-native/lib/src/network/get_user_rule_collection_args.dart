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
  const GetUserRuleCollectionArgs({
    required this.configurationName,
    required this.networkManagerName,
    required this.resourceGroupName,
    required this.ruleCollectionName,
  });

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
      configurationName: pulumi.Input.fromValue(map['configurationName'] as String),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleCollectionName: pulumi.Input.fromValue(map['ruleCollectionName'] as String),
    );
  }
}
