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
      name: (map['name'] as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      topicId: map['topicId'] == null ? null : (map['topicId']! as String).input(),
      topicName: map['topicName'] == null ? null : (map['topicName']! as String).input(),
    );
  }
}

