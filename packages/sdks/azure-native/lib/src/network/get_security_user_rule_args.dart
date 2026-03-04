// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_security_user_rule_args_doc}
/// Arguments for getSecurityUserRule.
/// {@endtemplate}
/// {@macro pulumi_network_get_security_user_rule_args_doc}
class GetSecurityUserRuleArgs {
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;

  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the network manager security Configuration rule collection.
  final pulumi.Input<String> ruleCollectionName;

  /// The name of the rule.
  final pulumi.Input<String> ruleName;

  /// Creates a new [GetSecurityUserRuleArgs].
  /// [configurationName] The name of the network manager Security Configuration.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  /// [ruleName] The name of the rule.
  GetSecurityUserRuleArgs({
    required this.configurationName,
    required this.networkManagerName,
    required this.resourceGroupName,
    required this.ruleCollectionName,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ruleCollectionName,
      'ruleName': ruleName,
    };
  }

  factory GetSecurityUserRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityUserRuleArgs(
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
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
    );
  }
}
