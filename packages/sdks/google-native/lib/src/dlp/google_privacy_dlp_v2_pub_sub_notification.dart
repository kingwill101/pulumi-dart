// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_data_profile_pub_sub_condition.dart';
import 'google_privacy_dlp_v2_pub_sub_notification_detail_of_message.dart';
import 'google_privacy_dlp_v2_pub_sub_notification_event.dart';

/// Send a Pub/Sub message into the given Pub/Sub topic to connect other systems to data profile generation. The message payload data will be the byte serialization of `DataProfilePubSubMessage`.
class GooglePrivacyDlpV2PubSubNotification {
  /// How much data to include in the Pub/Sub message. If the user wishes to limit the size of the message, they can use resource_name and fetch the profile fields they wish to. Per table profile (not per column).
  final pulumi.Input<GooglePrivacyDlpV2PubSubNotificationDetailOfMessage>?
  detailOfMessage;

  /// The type of event that triggers a Pub/Sub. At most one `PubSubNotification` per EventType is permitted.
  final pulumi.Input<GooglePrivacyDlpV2PubSubNotificationEvent>? event;

  /// Conditions (e.g., data risk or sensitivity level) for triggering a Pub/Sub.
  final pulumi.Input<GooglePrivacyDlpV2DataProfilePubSubCondition>?
  pubsubCondition;

  /// Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}.
  final pulumi.Input<String>? topic;

  /// Creates a new [GooglePrivacyDlpV2PubSubNotification].
  /// [detailOfMessage] How much data to include in the Pub/Sub message. If the user wishes to limit the size of the message, they can use resource_name and fetch the profile fields they wish to. Per table profile (not per column).
  /// [event] The type of event that triggers a Pub/Sub. At most one `PubSubNotification` per EventType is permitted.
  /// [pubsubCondition] Conditions (e.g., data risk or sensitivity level) for triggering a Pub/Sub.
  /// [topic] Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}.
  GooglePrivacyDlpV2PubSubNotification({
    this.detailOfMessage,
    this.event,
    this.pubsubCondition,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailOfMessage':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2PubSubNotificationDetailOfMessage,
            String
          >(detailOfMessage, (value) => value.wireValue),
      'event':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2PubSubNotificationEvent,
            String
          >(event, (value) => value.wireValue),
      'pubsubCondition':
          ?pulumi.Input.mapOptionalInputValue<
            GooglePrivacyDlpV2DataProfilePubSubCondition,
            Map<String, dynamic>
          >(pubsubCondition, (value) => value.toMap()),
      'topic': ?topic,
    };
  }

  factory GooglePrivacyDlpV2PubSubNotification.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2PubSubNotification(
      detailOfMessage: (() {
        final guardedValue = map['detailOfMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2PubSubNotificationDetailOfMessage.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      event: (() {
        final guardedValue = map['event'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2PubSubNotificationEvent.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      pubsubCondition: (() {
        final guardedValue = map['pubsubCondition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GooglePrivacyDlpV2DataProfilePubSubCondition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      topic: (() {
        final guardedValue = map['topic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
