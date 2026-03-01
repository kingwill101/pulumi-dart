// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1_get_topic_iam_policy_args_doc}
/// Arguments for getTopicIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1_get_topic_iam_policy_args_doc}
class GetTopicIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> topicId;

  /// Creates a new [GetTopicIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [topicId] Required.
  GetTopicIamPolicyArgs({
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

  factory GetTopicIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicIamPolicyArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      topicId: pulumi.Output.create<String>(map['topicId'] as String),
    );
  }
}

