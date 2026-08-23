// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileHumanAgentAssistantConfigNotificationConfig {
  /// Format of the message
  /// Possible values are: `MESSAGE_FORMAT_UNSPECIFIED`, `PROTO`, `JSON`.
  final pulumi.Input<String>? messageFormat;
  /// Name of the Pub/Sub topic to publish conversation events
  final pulumi.Input<String>? topic;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigNotificationConfig].
  /// [messageFormat] Format of the message
  /// [topic] Name of the Pub/Sub topic to publish conversation events
  const ConversationProfileHumanAgentAssistantConfigNotificationConfig({
    this.messageFormat,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageFormat': ?messageFormat,
      'topic': ?topic,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigNotificationConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigNotificationConfig(
      messageFormat: (() { final guardedValue = map['messageFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
