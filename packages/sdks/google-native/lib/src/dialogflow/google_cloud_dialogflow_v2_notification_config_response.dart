// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines notification behavior.
class GoogleCloudDialogflowV2NotificationConfigResponse {
  /// Format of message.
  final pulumi.Input<String> messageFormat;

  /// Name of the Pub/Sub topic to publish conversation events like CONVERSATION_STARTED as serialized ConversationEvent protos. For telephony integration to receive notification, make sure either this topic is in the same project as the conversation or you grant `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow Service Agent` role in the topic project. For chat integration to receive notification, make sure API caller has been granted the `Dialogflow Service Agent` role for the topic. Format: `projects//locations//topics/`.
  final pulumi.Input<String> topic;

  /// Creates a new [GoogleCloudDialogflowV2NotificationConfigResponse].
  /// [messageFormat] Format of message.
  /// [topic] Name of the Pub/Sub topic to publish conversation events like CONVERSATION_STARTED as serialized ConversationEvent protos. For telephony integration to receive notification, make sure either this topic is in the same project as the conversation or you grant `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow Service Agent` role in the topic project. For chat integration to receive notification, make sure API caller has been granted the `Dialogflow Service Agent` role for the topic. Format: `projects//locations//topics/`.
  GoogleCloudDialogflowV2NotificationConfigResponse({
    required this.messageFormat,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'messageFormat': messageFormat, 'topic': topic};
  }

  factory GoogleCloudDialogflowV2NotificationConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2NotificationConfigResponse(
      messageFormat: pulumi.Input.fromValue(map['messageFormat'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
