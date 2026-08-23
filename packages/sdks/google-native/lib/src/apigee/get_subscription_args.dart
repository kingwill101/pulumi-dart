// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_subscription_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_subscription_args_doc}
class GetSubscriptionArgs {
  final pulumi.Input<String> developerId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GetSubscriptionArgs].
  /// [developerId] Required.
  /// [organizationId] Required.
  /// [subscriptionId] Required.
  const GetSubscriptionArgs({
    required this.developerId,
    required this.organizationId,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'developerId': developerId,
      'organizationId': organizationId,
      'subscriptionId': subscriptionId,
    };
  }

  factory GetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs(
      developerId: pulumi.Input.fromValue(map['developerId'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}
