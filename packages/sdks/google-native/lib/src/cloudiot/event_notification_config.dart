// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for forwarding telemetry events.
class EventNotificationConfig {
  /// A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  final pulumi.Input<String>? pubsubTopicName;
  /// If the subfolder name matches this string exactly, this configuration will be used. The string must not include the leading '/' character. If empty, all strings are matched. This field is used only for telemetry events; subfolders are not supported for state changes.
  final pulumi.Input<String>? subfolderMatches;

  /// Creates a new [EventNotificationConfig].
  /// [pubsubTopicName] A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  /// [subfolderMatches] If the subfolder name matches this string exactly, this configuration will be used. The string must not include the leading '/' character. If empty, all strings are matched. This field is used only for telemetry events; subfolders are not supported for state changes.
  const EventNotificationConfig({
    this.pubsubTopicName,
    this.subfolderMatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubTopicName': ?pubsubTopicName,
      'subfolderMatches': ?subfolderMatches,
    };
  }

  factory EventNotificationConfig.fromMap(Map<String, dynamic> map) {
    return EventNotificationConfig(
      pubsubTopicName: (() { final guardedValue = map['pubsubTopicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subfolderMatches: (() { final guardedValue = map['subfolderMatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

