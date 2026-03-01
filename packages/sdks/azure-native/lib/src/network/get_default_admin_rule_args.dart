// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_default_admin_rule_args_doc}
/// Arguments for getDefaultAdminRule.
/// {@endtemplate}
/// {@macro pulumi_network_get_default_admin_rule_args_doc}
class GetDefaultAdminRuleArgs {
  /// The name of the network manager Security Configuration.
  final pulumi.Input<String> configurationName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the network manager security Configuration rule collection.
  final pulumi.Input<String> ruleCollectionName;
  /// The name of the rule.
  final pulumi.Input<String> ruleName;

  /// Creates a new [GetDefaultAdminRuleArgs].
  /// [configurationName] The name of the network manager Security Configuration.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleCollectionName] The name of the network manager security Configuration rule collection.
  /// [ruleName] The name of the rule.
  GetDefaultAdminRuleArgs({
    required pulumi.Output<String> configurationName,
    required pulumi.Output<String> networkManagerName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> ruleCollectionName,
    required pulumi.Output<String> ruleName,
  }) :
      configurationName = pulumi.Input.asInput<String>(configurationName),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleCollectionName = pulumi.Input.asInput<String>(ruleCollectionName),
      ruleName = pulumi.Input.asInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'ruleCollectionName': ruleCollectionName,
      'ruleName': ruleName,
    };
  }

  factory GetDefaultAdminRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultAdminRuleArgs(
      configurationName: pulumi.Output.create<String>(map['configurationName'] as String),
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleCollectionName: pulumi.Output.create<String>(map['ruleCollectionName'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
    );
  }
}

