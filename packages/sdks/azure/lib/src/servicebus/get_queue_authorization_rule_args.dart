// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_queue_authorization_rule_get_queue_authorization_rule_args_doc}
/// Arguments for getQueueAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_queue_authorization_rule_get_queue_authorization_rule_args_doc}
class GetQueueAuthorizationRuleArgs {
  /// The name of this ServiceBus Queue Authorisation Rule.
  final pulumi.Input<String> name;

  /// The name of the ServiceBus Namespace.
  final pulumi.Input<String>? namespaceName;
  final pulumi.Input<String>? queueId;

  /// The name of the ServiceBus Queue.
  final pulumi.Input<String>? queueName;

  /// The name of the Resource Group where the ServiceBus Queue Authorisation Rule exists.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [GetQueueAuthorizationRuleArgs].
  /// [name] The name of this ServiceBus Queue Authorisation Rule.
  /// [namespaceName] The name of the ServiceBus Namespace.
  /// [queueId] Optional.
  /// [queueName] The name of the ServiceBus Queue.
  /// [resourceGroupName] The name of the Resource Group where the ServiceBus Queue Authorisation Rule exists.
  GetQueueAuthorizationRuleArgs({
    required this.name,
    this.namespaceName,
    this.queueId,
    this.queueName,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceName': ?namespaceName,
      'queueId': ?queueId,
      'queueName': ?queueName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetQueueAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetQueueAuthorizationRuleArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceName: (() {
        final guardedValue = map['namespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queueId: (() {
        final guardedValue = map['queueId'];
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
    );
  }
}
