// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1beta2_get_subscription_pubsub_v1beta2_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta2_get_subscription_pubsub_v1beta2_args_doc}
class GetSubscriptionPubsubV1beta2Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GetSubscriptionPubsubV1beta2Args].
  /// [project] Optional.
  /// [subscriptionId] Required.
  GetSubscriptionPubsubV1beta2Args({
    this.project,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'subscriptionId': subscriptionId,
    };
  }

  factory GetSubscriptionPubsubV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionPubsubV1beta2Args(
      project: map['project'] == null ? null : (map['project']! as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
    );
  }
}

