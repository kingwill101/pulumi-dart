// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for forwarding telemetry events.
class EventNotificationConfigResponse {
  /// A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  final pulumi.Input<String> pubsubTopicName;

  /// If the subfolder name matches this string exactly, this configuration will be used. The string must not include the leading '/' character. If empty, all strings are matched. This field is used only for telemetry events; subfolders are not supported for state changes.
  final pulumi.Input<String> subfolderMatches;

  /// Creates a new [EventNotificationConfigResponse].
  /// [pubsubTopicName] A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  /// [subfolderMatches] If the subfolder name matches this string exactly, this configuration will be used. The string must not include the leading '/' character. If empty, all strings are matched. This field is used only for telemetry events; subfolders are not supported for state changes.
  EventNotificationConfigResponse({
    required this.pubsubTopicName,
    required this.subfolderMatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubTopicName': pubsubTopicName,
      'subfolderMatches': subfolderMatches,
    };
  }

  factory EventNotificationConfigResponse.fromMap(Map<String, dynamic> map) {
    return EventNotificationConfigResponse(
      pubsubTopicName: pulumi.Input.fromValue(map['pubsubTopicName'] as String),
      subfolderMatches: pulumi.Input.fromValue(
        map['subfolderMatches'] as String,
      ),
    );
  }
}
