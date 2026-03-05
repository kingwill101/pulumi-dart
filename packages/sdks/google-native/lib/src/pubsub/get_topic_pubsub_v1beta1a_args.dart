// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1beta1a_get_topic_pubsub_v1beta1a_args_doc}
/// Arguments for getTopic.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta1a_get_topic_pubsub_v1beta1a_args_doc}
class GetTopicPubsubV1beta1aArgs {
  final pulumi.Input<String> topicId;

  /// Creates a new [GetTopicPubsubV1beta1aArgs].
  /// [topicId] Required.
  GetTopicPubsubV1beta1aArgs({
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topicId': topicId,
    };
  }

  factory GetTopicPubsubV1beta1aArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicPubsubV1beta1aArgs(
      topicId: pulumi.Input.fromValue(map['topicId'] as String),
    );
  }
}

