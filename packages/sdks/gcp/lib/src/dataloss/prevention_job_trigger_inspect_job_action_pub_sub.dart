// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobActionPubSub {
  /// Cloud Pub/Sub topic to send notifications to.
  final pulumi.Input<String> topic;

  /// Creates a new [PreventionJobTriggerInspectJobActionPubSub].
  /// [topic] Cloud Pub/Sub topic to send notifications to.
  const PreventionJobTriggerInspectJobActionPubSub({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': topic,
    };
  }

  factory PreventionJobTriggerInspectJobActionPubSub.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobActionPubSub(
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

