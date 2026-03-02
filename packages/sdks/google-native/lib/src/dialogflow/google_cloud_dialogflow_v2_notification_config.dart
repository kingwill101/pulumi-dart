// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_notification_config_message_format.dart';

/// Defines notification behavior.
class GoogleCloudDialogflowV2NotificationConfig {
  /// Format of message.
  final pulumi.Input<GoogleCloudDialogflowV2NotificationConfigMessageFormat>? messageFormat;
  /// Name of the Pub/Sub topic to publish conversation events like CONVERSATION_STARTED as serialized ConversationEvent protos. For telephony integration to receive notification, make sure either this topic is in the same project as the conversation or you grant `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow Service Agent` role in the topic project. For chat integration to receive notification, make sure API caller has been granted the `Dialogflow Service Agent` role for the topic. Format: `projects//locations//topics/`.
  final pulumi.Input<String>? topic;

  /// Creates a new [GoogleCloudDialogflowV2NotificationConfig].
  /// [messageFormat] Format of message.
  /// [topic] Name of the Pub/Sub topic to publish conversation events like CONVERSATION_STARTED as serialized ConversationEvent protos. For telephony integration to receive notification, make sure either this topic is in the same project as the conversation or you grant `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow Service Agent` role in the topic project. For chat integration to receive notification, make sure API caller has been granted the `Dialogflow Service Agent` role for the topic. Format: `projects//locations//topics/`.
  GoogleCloudDialogflowV2NotificationConfig({
    this.messageFormat,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'messageFormat': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2NotificationConfigMessageFormat, String>(messageFormat, (value) => value.value),
      'topic': ?topic,
    };
  }

  factory GoogleCloudDialogflowV2NotificationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2NotificationConfig(
      messageFormat: map['messageFormat'] == null ? null : (GoogleCloudDialogflowV2NotificationConfigMessageFormat.fromValue(map['messageFormat'] as String)).input(),
      topic: map['topic'] == null ? null : (map['topic'] as String).input(),
    );
  }
}

