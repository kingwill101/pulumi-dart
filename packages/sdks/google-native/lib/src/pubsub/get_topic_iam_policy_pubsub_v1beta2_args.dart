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
  const GetTopicIamPolicyPubsubV1beta2Args({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'topicId': topicId,
    };
  }

  factory GetTopicIamPolicyPubsubV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetTopicIamPolicyPubsubV1beta2Args(
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicId: pulumi.Input.fromValue(map['topicId'] as String),
    );
  }
}
