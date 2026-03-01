// ignore_for_file: unused_element, unnecessary_cast


/// The configuration for notification of new states received from the device.
class StateNotificationConfigResponse {
  /// A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  final String pubsubTopicName;

  /// Creates a new [StateNotificationConfigResponse].
  /// [pubsubTopicName] A Cloud Pub/Sub topic name. For example, `projects/myProject/topics/deviceEvents`.
  StateNotificationConfigResponse({
    required this.pubsubTopicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubTopicName': pubsubTopicName,
    };
  }

  factory StateNotificationConfigResponse.fromMap(Map<String, dynamic> map) {
    return StateNotificationConfigResponse(
      pubsubTopicName: map['pubsubTopicName'] as String,
    );
  }
}

