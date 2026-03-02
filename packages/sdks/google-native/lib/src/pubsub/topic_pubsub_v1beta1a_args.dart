// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1beta1a_topic_pubsub_v1beta1a_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta1a_topic_pubsub_v1beta1a_args_doc}
class TopicPubsubV1beta1aArgs {
  /// Name of the topic.
  final pulumi.Input<String>? name;

  /// Creates a new [TopicPubsubV1beta1aArgs].
  /// [name] Name of the topic.
  TopicPubsubV1beta1aArgs({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory TopicPubsubV1beta1aArgs.fromMap(Map<String, dynamic> map) {
    return TopicPubsubV1beta1aArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

