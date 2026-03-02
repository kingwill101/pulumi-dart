// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_security_group_item.dart';

/// {@template pulumi_network_user_rule_collection_args_doc}
/// The set of arguments for UserRuleCollection.
/// {@endtemplate}
/// {@macro pulumi_network_user_rule_collection_args_doc}
class UserRuleCollectionArgs {
  /// Groups for configuration
  final pulumi.Input<List<NetworkManagerSecurityGroupItem>> appliesToGroups;
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;
  /// A description of the user rule collection.
  final pulumi.Input<String>? description;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager security Configuration rule collection.
  final pulumi.Input<String>? ruleCollectionName;

  /// Creates a new [UserRuleCollectionArgs].
  /// [appliesToGroups] Groups for configuration
  /// [configurationName] The name of the network manager Security Configuration.
  /// [description] A description of the user rule collection.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  UserRuleCollectionArgs({
    required this.appliesToGroups,
    required this.configurationName,
    this.description,
    required this.networkManagerName,
    required this.resourceGroupName,
    this.ruleCollectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': pulumi.Input.mapInputValue<List<NetworkManagerSecurityGroupItem>, List<Map<String, dynamic>>>(appliesToGroups, (value) => pulumi.Input.encodeList<NetworkManagerSecurityGroupItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationName': configurationName,
      'description': ?description,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ?ruleCollectionName,
    };
  }

  factory UserRuleCollectionArgs.fromMap(Map<String, dynamic> map) {
    return UserRuleCollectionArgs(
      appliesToGroups: (pulumi.Input.decodeList<NetworkManagerSecurityGroupItem>(map['appliesToGroups'], (value) => NetworkManagerSecurityGroupItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configurationName: (map['configurationName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      networkManagerName: (map['networkManagerName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleCollectionName: map['ruleCollectionName'] == null ? null : (map['ruleCollectionName'] as String).input(),
    );
  }
}

