// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_get_subscription_get_subscription_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_core_get_subscription_get_subscription_args_doc}
class GetSubscriptionArgs {
  /// Specifies the ID of the subscription. If this argument is omitted, the subscription ID of the current Azure Resource Manager provider is used.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GetSubscriptionArgs].
  /// [subscriptionId] Specifies the ID of the subscription. If this argument is omitted, the subscription ID of the current Azure Resource Manager provider is used.
  GetSubscriptionArgs({
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs(
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId'] as String).input(),
    );
  }
}

