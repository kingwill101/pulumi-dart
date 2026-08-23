// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_subscription_get_subscription_tar_directory_args_doc}
/// Arguments for getSubscriptionTarDirectory.
/// {@endtemplate}
/// {@macro pulumi_subscription_get_subscription_tar_directory_args_doc}
class GetSubscriptionTarDirectoryArgs {
  /// Subscription Id.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GetSubscriptionTarDirectoryArgs].
  /// [subscriptionId] Subscription Id.
  const GetSubscriptionTarDirectoryArgs({
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GetSubscriptionTarDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionTarDirectoryArgs(
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
