// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionEventingConfigDeadLetterConfig {
  /// Project which has the topic given.
  final pulumi.Input<String> projectId;
  /// Topic to push events which couldn't be processed.
  final pulumi.Input<String> topic;

  /// Creates a new [ConnectionEventingConfigDeadLetterConfig].
  /// [projectId] Project which has the topic given.
  /// [topic] Topic to push events which couldn't be processed.
  const ConnectionEventingConfigDeadLetterConfig({
    required this.projectId,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
      'topic': topic,
    };
  }

  factory ConnectionEventingConfigDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfigDeadLetterConfig(
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
