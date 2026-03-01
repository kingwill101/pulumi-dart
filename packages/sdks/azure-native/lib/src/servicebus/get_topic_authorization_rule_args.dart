// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_topic_authorization_rule_args_doc}
/// Arguments for getTopicAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_topic_authorization_rule_args_doc}
class GetTopicAuthorizationRuleArgs {
  /// The authorization rule name.
  final pulumi.Input<String> authorizationRuleName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The topic name.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetTopicAuthorizationRuleArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [topicName] The topic name.
  GetTopicAuthorizationRuleArgs({
    required pulumi.Output<String> authorizationRuleName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> topicName,
  }) :
      authorizationRuleName = pulumi.Input.asInput<String>(authorizationRuleName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': authorizationRuleName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory GetTopicAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicAuthorizationRuleArgs(
      authorizationRuleName: pulumi.Output.create<String>(map['authorizationRuleName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      topicName: pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

