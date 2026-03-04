// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceEventPublishConfig {
  /// Option to enable Event Publishing.
  final pulumi.Input<bool> enabled;

  /// The resource name of the Pub/Sub topic. Format: projects/{projectId}/topics/{topic_id}
  final pulumi.Input<String> topic;

  /// Creates a new [InstanceEventPublishConfig].
  /// [enabled] Option to enable Event Publishing.
  /// [topic] The resource name of the Pub/Sub topic. Format: projects/{projectId}/topics/{topic_id}
  InstanceEventPublishConfig({required this.enabled, required this.topic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'topic': topic};
  }

  factory InstanceEventPublishConfig.fromMap(Map<String, dynamic> map) {
    return InstanceEventPublishConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
