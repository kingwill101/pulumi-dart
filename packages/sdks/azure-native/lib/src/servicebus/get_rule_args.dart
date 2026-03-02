// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_rule_args_doc}
/// Arguments for getRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_rule_args_doc}
class GetRuleArgs {
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The rule name.
  final pulumi.Input<String> ruleName;
  /// The subscription name.
  final pulumi.Input<String> subscriptionName;
  /// The topic name.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetRuleArgs].
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] The rule name.
  /// [subscriptionName] The subscription name.
  /// [topicName] The topic name.
  GetRuleArgs({
    required this.namespaceName,
    required this.resourceGroupName,
    required this.ruleName,
    required this.subscriptionName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
      'subscriptionName': subscriptionName,
      'topicName': topicName,
    };
  }

  factory GetRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleArgs(
      namespaceName: (map['namespaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleName: (map['ruleName'] as String).input(),
      subscriptionName: (map['subscriptionName'] as String).input(),
      topicName: (map['topicName'] as String).input(),
    );
  }
}

