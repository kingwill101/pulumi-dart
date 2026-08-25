// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileNotificationConfig {
  /// Format of the message
  /// Possible values are: `MESSAGE_FORMAT_UNSPECIFIED`, `PROTO`, `JSON`.
  final pulumi.Input<String?>? messageFormat;
  /// Name of the Pub/Sub topic to publish conversation events
  final pulumi.Input<String?>? topic;

  /// Creates a new [ConversationProfileNotificationConfig].
  /// [messageFormat] Format of the message
  /// [topic] Name of the Pub/Sub topic to publish conversation events
  const ConversationProfileNotificationConfig({
    this.messageFormat,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageFormat': ?messageFormat,
      'topic': ?topic,
    };
  }

  factory ConversationProfileNotificationConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileNotificationConfig(
      messageFormat: (() { final guardedValue = map['messageFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
