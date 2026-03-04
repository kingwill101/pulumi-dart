// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification to configure notifications published to Pub/Sub. Notifications are published to the customer-provided topic using the following `PubsubMessage.attributes`: * `"eventType"`: one of the EventType values * `"payloadFormat"`: one of the PayloadFormat values * `"projectId"`: the project_id of the `TransferOperation` * `"transferJobName"`: the transfer_job_name of the `TransferOperation` * `"transferOperationName"`: the name of the `TransferOperation` The `PubsubMessage.data` contains a TransferOperation resource formatted according to the specified `PayloadFormat`.
class NotificationConfigResponse {
  /// Event types for which a notification is desired. If empty, send notifications for all event types.
  final pulumi.Input<List<String>> eventTypes;

  /// The desired format of the notification message payloads.
  final pulumi.Input<String> payloadFormat;

  /// The `Topic.name` of the Pub/Sub topic to which to publish notifications. Must be of the format: `projects/{project}/topics/{topic}`. Not matching this format results in an INVALID_ARGUMENT error.
  final pulumi.Input<String> pubsubTopic;

  /// Creates a new [NotificationConfigResponse].
  /// [eventTypes] Event types for which a notification is desired. If empty, send notifications for all event types.
  /// [payloadFormat] The desired format of the notification message payloads.
  /// [pubsubTopic] The `Topic.name` of the Pub/Sub topic to which to publish notifications. Must be of the format: `projects/{project}/topics/{topic}`. Not matching this format results in an INVALID_ARGUMENT error.
  NotificationConfigResponse({
    required this.eventTypes,
    required this.payloadFormat,
    required this.pubsubTopic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTypes': eventTypes,
      'payloadFormat': payloadFormat,
      'pubsubTopic': pubsubTopic,
    };
  }

  factory NotificationConfigResponse.fromMap(Map<String, dynamic> map) {
    return NotificationConfigResponse(
      eventTypes: pulumi.Input.fromValue(
        (map['eventTypes'] as List).cast<String>(),
      ),
      payloadFormat: pulumi.Input.fromValue(map['payloadFormat'] as String),
      pubsubTopic: pulumi.Input.fromValue(map['pubsubTopic'] as String),
    );
  }
}
