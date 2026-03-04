// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for notification of new states received from the device.
class StateNotificationConfig {
  /// A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  final pulumi.Input<String>? pubsubTopicName;

  /// Creates a new [StateNotificationConfig].
  /// [pubsubTopicName] A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  StateNotificationConfig({this.pubsubTopicName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pubsubTopicName': ?pubsubTopicName};
  }

  factory StateNotificationConfig.fromMap(Map<String, dynamic> map) {
    return StateNotificationConfig(
      pubsubTopicName: (() {
        final guardedValue = map['pubsubTopicName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
