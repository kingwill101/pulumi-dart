// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1beta2_get_subscription_iam_policy_pubsub_v1beta2_args_doc}
/// Arguments for getSubscriptionIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta2_get_subscription_iam_policy_pubsub_v1beta2_args_doc}
class GetSubscriptionIamPolicyPubsubV1beta2Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [GetSubscriptionIamPolicyPubsubV1beta2Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [subscriptionId] Required.
  GetSubscriptionIamPolicyPubsubV1beta2Args({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> subscriptionId,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'subscriptionId': subscriptionId,
    };
  }

  factory GetSubscriptionIamPolicyPubsubV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionIamPolicyPubsubV1beta2Args(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

