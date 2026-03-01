// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsublite_v1_get_topic_args_doc}
/// Arguments for getTopic.
/// {@endtemplate}
/// {@macro pulumi_pubsublite_v1_get_topic_args_doc}
class GetTopicArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> topicId;

  /// Creates a new [GetTopicArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [topicId] Required.
  GetTopicArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> topicId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      topicId = pulumi.Input.asInput<String>(topicId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'topicId': topicId,
    };
  }

  factory GetTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      topicId: pulumi.Output.create<String>(map['topicId'] as String),
    );
  }
}

