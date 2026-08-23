// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_user_group_item.dart';

/// {@template pulumi_network_security_user_rule_collection_args_doc}
/// The set of arguments for SecurityUserRuleCollection.
/// {@endtemplate}
/// {@macro pulumi_network_security_user_rule_collection_args_doc}
class SecurityUserRuleCollectionArgs {
  /// Groups for configuration
  final pulumi.Input<List<SecurityUserGroupItem>> appliesToGroups;
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;
  /// A description of the security user rule collection.
  final pulumi.Input<String>? description;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager security Configuration rule collection.
  final pulumi.Input<String>? ruleCollectionName;

  /// Creates a new [SecurityUserRuleCollectionArgs].
  /// [appliesToGroups] Groups for configuration
  /// [configurationName] The name of the network manager Security Configuration.
  /// [description] A description of the security user rule collection.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  const SecurityUserRuleCollectionArgs({
    required this.appliesToGroups,
    required this.configurationName,
    this.description,
    required this.networkManagerName,
    required this.resourceGroupName,
    this.ruleCollectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliesToGroups': pulumi.Input.mapInputValue<List<SecurityUserGroupItem>, List<Map<String, dynamic>>>(appliesToGroups, (value) => pulumi.Input.encodeList<SecurityUserGroupItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationName': configurationName,
      'description': ?description,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ?ruleCollectionName,
    };
  }

  factory SecurityUserRuleCollectionArgs.fromMap(Map<String, dynamic> map) {
    return SecurityUserRuleCollectionArgs(
      appliesToGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityUserGroupItem>(map['appliesToGroups']!, (value) => SecurityUserGroupItem.fromMap((value as Map).cast<String, dynamic>()))),
      configurationName: pulumi.Input.fromValue(map['configurationName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleCollectionName: (() { final guardedValue = map['ruleCollectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
