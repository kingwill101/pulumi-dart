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
    required pulumi.Output<String> name,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? queueId,
    pulumi.Output<String>? queueName,
    pulumi.Output<String>? resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      queueId = pulumi.Input.asOptionalInput<String>(queueId),
      queueName = pulumi.Input.asOptionalInput<String>(queueName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      name: pulumi.Output.create<String>(map['name'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      queueId: map['queueId'] == null ? null : pulumi.Output.create<String>(map['queueId'] as String),
      queueName: map['queueName'] == null ? null : pulumi.Output.create<String>(map['queueName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

