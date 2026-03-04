// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Pub/Sub destination.
class PubsubDestinationResponse {
  /// The name of the Pub/Sub topic to publish job completion notification to. For example: `projects/{project}/topics/{topic}`.
  final pulumi.Input<String> topic;

  /// Creates a new [PubsubDestinationResponse].
  /// [topic] The name of the Pub/Sub topic to publish job completion notification to. For example: `projects/{project}/topics/{topic}`.
  PubsubDestinationResponse({required this.topic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topic': topic};
  }

  factory PubsubDestinationResponse.fromMap(Map<String, dynamic> map) {
    return PubsubDestinationResponse(
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
