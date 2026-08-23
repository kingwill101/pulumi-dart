// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicebus_get_subscription_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_servicebus_get_subscription_args_doc}
class GetSubscriptionArgs {
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The subscription name.
  final pulumi.Input<String> subscriptionName;
  /// The topic name.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetSubscriptionArgs].
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subscriptionName] The subscription name.
  /// [topicName] The topic name.
  const GetSubscriptionArgs({
    required this.namespaceName,
    required this.resourceGroupName,
    required this.subscriptionName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'subscriptionName': subscriptionName,
      'topicName': topicName,
    };
  }

  factory GetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs(
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionName: pulumi.Input.fromValue(map['subscriptionName'] as String),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}
