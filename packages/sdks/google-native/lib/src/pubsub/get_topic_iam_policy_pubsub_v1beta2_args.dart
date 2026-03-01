// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1beta2_get_topic_iam_policy_pubsub_v1beta2_args_doc}
/// Arguments for getTopicIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta2_get_topic_iam_policy_pubsub_v1beta2_args_doc}
class GetTopicIamPolicyPubsubV1beta2Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> topicId;

  /// Creates a new [GetTopicIamPolicyPubsubV1beta2Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [topicId] Required.
  GetTopicIamPolicyPubsubV1beta2Args({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> topicId,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      topicId = pulumi.Input.asInput<String>(topicId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'topicId': topicId,
    };
  }

  factory GetTopicIamPolicyPubsubV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetTopicIamPolicyPubsubV1beta2Args(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      topicId: pulumi.Output.create<String>(map['topicId'] as String),
    );
  }
}

