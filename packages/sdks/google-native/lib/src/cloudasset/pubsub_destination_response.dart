// ignore_for_file: unused_element, unnecessary_cast


/// A Pub/Sub destination.
class PubsubDestinationResponse {
  /// The name of the Pub/Sub topic to publish to. Example: `projects/PROJECT_ID/topics/TOPIC_ID`.
  final String topic;

  /// Creates a new [PubsubDestinationResponse].
  /// [topic] The name of the Pub/Sub topic to publish to. Example: `projects/PROJECT_ID/topics/TOPIC_ID`.
  PubsubDestinationResponse({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': topic,
    };
  }

  factory PubsubDestinationResponse.fromMap(Map<String, dynamic> map) {
    return PubsubDestinationResponse(
      topic: map['topic'] as String,
    );
  }
}

