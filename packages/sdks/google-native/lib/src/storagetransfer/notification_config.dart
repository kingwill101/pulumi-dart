// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_config_event_types_item.dart';
import 'notification_config_payload_format.dart';

/// Specification to configure notifications published to Pub/Sub. Notifications are published to the customer-provided topic using the following `PubsubMessage.attributes`: * `"eventType"`: one of the EventType values * `"payloadFormat"`: one of the PayloadFormat values * `"projectId"`: the project_id of the `TransferOperation` * `"transferJobName"`: the transfer_job_name of the `TransferOperation` * `"transferOperationName"`: the name of the `TransferOperation` The `PubsubMessage.data` contains a TransferOperation resource formatted according to the specified `PayloadFormat`.
class NotificationConfig {
  /// Event types for which a notification is desired. If empty, send notifications for all event types.
  final pulumi.Input<List<NotificationConfigEventTypesItem>>? eventTypes;
  /// The desired format of the notification message payloads.
  final pulumi.Input<NotificationConfigPayloadFormat> payloadFormat;
  /// The `Topic.name` of the Pub/Sub topic to which to publish notifications. Must be of the format: `projects/{project}/topics/{topic}`. Not matching this format results in an INVALID_ARGUMENT error.
  final pulumi.Input<String> pubsubTopic;

  /// Creates a new [NotificationConfig].
  /// [eventTypes] Event types for which a notification is desired. If empty, send notifications for all event types.
  /// [payloadFormat] The desired format of the notification message payloads.
  /// [pubsubTopic] The `Topic.name` of the Pub/Sub topic to which to publish notifications. Must be of the format: `projects/{project}/topics/{topic}`. Not matching this format results in an INVALID_ARGUMENT error.
  const NotificationConfig({
    this.eventTypes,
    required this.payloadFormat,
    required this.pubsubTopic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTypes': ?pulumi.Input.mapOptionalInputValue<List<NotificationConfigEventTypesItem>, List<String>>(eventTypes, (value) => pulumi.Input.encodeList<NotificationConfigEventTypesItem, String>(value, (value) => value.wireValue)),
      'payloadFormat': pulumi.Input.mapInputValue<NotificationConfigPayloadFormat, String>(payloadFormat, (value) => value.wireValue),
      'pubsubTopic': pubsubTopic,
    };
  }

  factory NotificationConfig.fromMap(Map<String, dynamic> map) {
    return NotificationConfig(
      eventTypes: (() { final guardedValue = map['eventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationConfigEventTypesItem>(guardedValue, (value) => NotificationConfigEventTypesItem.fromValue(value as String))); })(),
      payloadFormat: pulumi.Input.fromValue(NotificationConfigPayloadFormat.fromValue(map['payloadFormat']! as String)),
      pubsubTopic: pulumi.Input.fromValue(map['pubsubTopic'] as String),
    );
  }
}

