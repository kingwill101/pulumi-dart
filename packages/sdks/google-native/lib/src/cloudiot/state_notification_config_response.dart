// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration for notification of new states received from the device.
class StateNotificationConfigResponse {
  /// A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  final pulumi.Input<String> pubsubTopicName;

  /// Creates a new [StateNotificationConfigResponse].
  /// [pubsubTopicName] A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  StateNotificationConfigResponse({required this.pubsubTopicName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pubsubTopicName': pubsubTopicName};
  }

  factory StateNotificationConfigResponse.fromMap(Map<String, dynamic> map) {
    return StateNotificationConfigResponse(
      pubsubTopicName: pulumi.Input.fromValue(map['pubsubTopicName'] as String),
    );
  }
}
