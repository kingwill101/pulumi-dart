// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_topic_authorization_rule_get_topic_authorization_rule_args_doc}
/// Arguments for getTopicAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_topic_authorization_rule_get_topic_authorization_rule_args_doc}
class GetTopicAuthorizationRuleArgs {
  /// The name of the ServiceBus Topic Authorization Rule resource.
  final pulumi.Input<String> name;

  /// The name of the ServiceBus Namespace.
  final pulumi.Input<String>? namespaceName;
  final pulumi.Input<String>? queueName;

  /// The name of the resource group in which the ServiceBus Namespace exists.
  final pulumi.Input<String>? resourceGroupName;
  final pulumi.Input<String>? topicId;

  /// The name of the ServiceBus Topic.
  final pulumi.Input<String>? topicName;

  /// Creates a new [GetTopicAuthorizationRuleArgs].
  /// [name] The name of the ServiceBus Topic Authorization Rule resource.
  /// [namespaceName] The name of the ServiceBus Namespace.
  /// [queueName] Optional.
  /// [resourceGroupName] The name of the resource group in which the ServiceBus Namespace exists.
  /// [topicId] Optional.
  /// [topicName] The name of the ServiceBus Topic.
  GetTopicAuthorizationRuleArgs({
    required this.name,
    this.namespaceName,
    this.queueName,
    this.resourceGroupName,
    this.topicId,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceName': ?namespaceName,
      'queueName': ?queueName,
      'resourceGroupName': ?resourceGroupName,
      'topicId': ?topicId,
      'topicName': ?topicName,
    };
  }

  factory GetTopicAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicAuthorizationRuleArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceName: (() {
        final guardedValue = map['namespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queueName: (() {
        final guardedValue = map['queueName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      topicId: (() {
        final guardedValue = map['topicId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      topicName: (() {
        final guardedValue = map['topicName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
