// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_get_subscription_iam_policy_get_subscription_iam_policy_args_doc}
/// Arguments for getSubscriptionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_pubsub_get_subscription_iam_policy_get_subscription_iam_policy_args_doc}
class GetSubscriptionIamPolicyArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The subscription name or id to bind to attach IAM policy to.
  final pulumi.Input<String> subscription;

  /// Creates a new [GetSubscriptionIamPolicyArgs].
  /// [project] The project in which the resource belongs. If it
  /// [subscription] The subscription name or id to bind to attach IAM policy to.
  GetSubscriptionIamPolicyArgs({
    this.project,
    required this.subscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'subscription': subscription,
    };
  }

  factory GetSubscriptionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionIamPolicyArgs(
      project: map['project'] == null ? null : (map['project'] as String).input(),
      subscription: (map['subscription'] as String).input(),
    );
  }
}

