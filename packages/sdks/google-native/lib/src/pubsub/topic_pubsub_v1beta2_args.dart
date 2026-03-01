// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1beta2_topic_pubsub_v1beta2_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta2_topic_pubsub_v1beta2_args_doc}
class TopicPubsubV1beta2Args {
  /// The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> topicId;

  /// Creates a new [TopicPubsubV1beta2Args].
  /// [name] The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  /// [project] Optional.
  /// [topicId] Required.
  TopicPubsubV1beta2Args({
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> topicId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      topicId = pulumi.Input.asInput<String>(topicId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'topicId': topicId,
    };
  }

  factory TopicPubsubV1beta2Args.fromMap(Map<String, dynamic> map) {
    return TopicPubsubV1beta2Args(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      topicId: pulumi.Output.create<String>(map['topicId'] as String),
    );
  }
}

