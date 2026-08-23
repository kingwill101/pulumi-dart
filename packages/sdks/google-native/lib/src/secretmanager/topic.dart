// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Pub/Sub topic which Secret Manager will publish to when control plane events occur on this secret.
class Topic {
  /// The resource name of the Pub/Sub topic that will be published to, in the following format: `projects/*/topics/*`. For publication to succeed, the Secret Manager service agent must have the `pubsub.topic.publish` permission on the topic. The Pub/Sub Publisher role (`roles/pubsub.publisher`) includes this permission.
  final pulumi.Input<String> name;

  /// Creates a new [Topic].
  /// [name] The resource name of the Pub/Sub topic that will be published to, in the following format: `projects/*/topics/*`. For publication to succeed, the Secret Manager service agent must have the `pubsub.topic.publish` permission on the topic. The Pub/Sub Publisher role (`roles/pubsub.publisher`) includes this permission.
  const Topic({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory Topic.fromMap(Map<String, dynamic> map) {
    return Topic(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
