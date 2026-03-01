// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_subscription_get_subscription_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_subscription_get_subscription_args_doc}
class GetSubscriptionArgs {
  /// Specifies the name of the ServiceBus Subscription.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? namespaceName;
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the ServiceBus Topic where the Service Bus Subscription exists.
  final pulumi.Input<String>? topicId;
  final pulumi.Input<String>? topicName;

  /// Creates a new [GetSubscriptionArgs].
  /// [name] Specifies the name of the ServiceBus Subscription.
  /// [namespaceName] Optional.
  /// [resourceGroupName] Optional.
  /// [topicId] The ID of the ServiceBus Topic where the Service Bus Subscription exists.
  /// [topicName] Optional.
  GetSubscriptionArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? topicId,
    pulumi.Output<String>? topicName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      topicId = pulumi.Input.asOptionalInput<String>(topicId),
      topicName = pulumi.Input.asOptionalInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceName': ?namespaceName,
      'resourceGroupName': ?resourceGroupName,
      'topicId': ?topicId,
      'topicName': ?topicName,
    };
  }

  factory GetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      topicId: map['topicId'] == null ? null : pulumi.Output.create<String>(map['topicId'] as String),
      topicName: map['topicName'] == null ? null : pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

