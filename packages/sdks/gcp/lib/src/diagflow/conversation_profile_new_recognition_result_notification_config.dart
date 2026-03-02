// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileNewRecognitionResultNotificationConfig {
  /// Format of message.
  /// Possible values are: `MESSAGE_FORMAT_UNSPECIFIED`, `PROTO`, `JSON`.
  final pulumi.Input<String>? messageFormat;
  /// Name of the Pub/Sub topic to publish conversation events like CONVERSATION_STARTED as serialized ConversationEvent protos.
  /// For telephony integration to receive notification, make sure either this topic is in the same project as the conversation or you grant service-<Conversation Project Number>@gcp-sa-dialogflow.iam.gserviceaccount.com the Dialogflow Service Agent role in the topic project.
  /// For chat integration to receive notification, make sure API caller has been granted the Dialogflow Service Agent role for the topic.
  /// Format: projects/<Project ID>/locations/<Location ID>/topics/<Topic ID>.
  final pulumi.Input<String>? topic;

  /// Creates a new [ConversationProfileNewRecognitionResultNotificationConfig].
  /// [messageFormat] Format of message.
  /// [topic] Name of the Pub/Sub topic to publish conversation events like CONVERSATION_STARTED as serialized ConversationEvent protos.
  ConversationProfileNewRecognitionResultNotificationConfig({
    this.messageFormat,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageFormat': ?messageFormat,
      'topic': ?topic,
    };
  }

  factory ConversationProfileNewRecognitionResultNotificationConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileNewRecognitionResultNotificationConfig(
      messageFormat: map['messageFormat'] == null ? null : (map['messageFormat'] as String).input(),
      topic: map['topic'] == null ? null : (map['topic'] as String).input(),
    );
  }
}

