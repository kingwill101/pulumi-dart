// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_subscription_get_subscription_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_subscription_get_subscription_args_doc}
class GetSubscriptionArgs {
  /// The ID of the API Management Service in which this Subscription exists.
  final pulumi.Input<String> apiManagementId;
  /// The Identifier for the API Management Subscription.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GetSubscriptionArgs].
  /// [apiManagementId] The ID of the API Management Service in which this Subscription exists.
  /// [subscriptionId] The Identifier for the API Management Subscription.
  const GetSubscriptionArgs({
    required this.apiManagementId,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'subscriptionId': subscriptionId,
    };
  }

  factory GetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs(
      apiManagementId: pulumi.Input.fromValue(map['apiManagementId'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}

