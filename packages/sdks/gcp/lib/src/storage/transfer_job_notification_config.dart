// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobNotificationConfig {
  /// Event types for which a notification is desired. If empty, send notifications for all event types. The valid types are "TRANSFER_OPERATION_SUCCESS", "TRANSFER_OPERATION_FAILED", "TRANSFER_OPERATION_ABORTED".
  final pulumi.Input<List<String>?>? eventTypes;
  /// The desired format of the notification message payloads. One of "NONE" or "JSON".
  final pulumi.Input<String> payloadFormat;
  /// The Topic.name of the Pub/Sub topic to which to publish notifications. Must be of the format: projects/{project}/topics/{topic}. Not matching this format results in an INVALID_ARGUMENT error.
  final pulumi.Input<String> pubsubTopic;

  /// Creates a new [TransferJobNotificationConfig].
  /// [eventTypes] Event types for which a notification is desired. If empty, send notifications for all event types. The valid types are "TRANSFER_OPERATION_SUCCESS", "TRANSFER_OPERATION_FAILED", "TRANSFER_OPERATION_ABORTED".
  /// [payloadFormat] The desired format of the notification message payloads. One of "NONE" or "JSON".
  /// [pubsubTopic] The Topic.name of the Pub/Sub topic to which to publish notifications. Must be of the format: projects/{project}/topics/{topic}. Not matching this format results in an INVALID_ARGUMENT error.
  const TransferJobNotificationConfig({
    this.eventTypes,
    required this.payloadFormat,
    required this.pubsubTopic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTypes': ?eventTypes,
      'payloadFormat': payloadFormat,
      'pubsubTopic': pubsubTopic,
    };
  }

  factory TransferJobNotificationConfig.fromMap(Map<String, dynamic> map) {
    return TransferJobNotificationConfig(
      eventTypes: (() { final guardedValue = map['eventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      payloadFormat: pulumi.Input.fromValue(map['payloadFormat'] as String),
      pubsubTopic: pulumi.Input.fromValue(map['pubsubTopic'] as String),
    );
  }
}
