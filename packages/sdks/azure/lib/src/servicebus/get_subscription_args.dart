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
    required this.name,
    this.namespaceName,
    this.resourceGroupName,
    this.topicId,
    this.topicName,
  });

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
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicId: (() { final guardedValue = map['topicId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicName: (() { final guardedValue = map['topicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

