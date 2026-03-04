// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_security_user_rule_collection_args_doc}
/// Arguments for getSecurityUserRuleCollection.
/// {@endtemplate}
/// {@macro pulumi_network_get_security_user_rule_collection_args_doc}
class GetSecurityUserRuleCollectionArgs {
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;

  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the network manager security Configuration rule collection.
  final pulumi.Input<String> ruleCollectionName;

  /// Creates a new [GetSecurityUserRuleCollectionArgs].
  /// [configurationName] The name of the network manager Security Configuration.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  GetSecurityUserRuleCollectionArgs({
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

  factory GetSecurityUserRuleCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityUserRuleCollectionArgs(
      configurationName: pulumi.Input.fromValue(
        map['configurationName'] as String,
      ),
      networkManagerName: pulumi.Input.fromValue(
        map['networkManagerName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      ruleCollectionName: pulumi.Input.fromValue(
        map['ruleCollectionName'] as String,
      ),
    );
  }
}
