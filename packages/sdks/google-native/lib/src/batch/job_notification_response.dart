// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'message_response.dart';

/// Notification configurations.
class JobNotificationResponse {
  /// The attribute requirements of messages to be sent to this Pub/Sub topic. Without this field, no message will be sent.
  final pulumi.Input<MessageResponse> message;

  /// The Pub/Sub topic where notifications like the job state changes will be published. The topic must exist in the same project as the job and billings will be charged to this project. If not specified, no Pub/Sub messages will be sent. Topic format: `projects/{project}/topics/{topic}`.
  final pulumi.Input<String> pubsubTopic;

  /// Creates a new [JobNotificationResponse].
  /// [message] The attribute requirements of messages to be sent to this Pub/Sub topic. Without this field, no message will be sent.
  /// [pubsubTopic] The Pub/Sub topic where notifications like the job state changes will be published. The topic must exist in the same project as the job and billings will be charged to this project. If not specified, no Pub/Sub messages will be sent. Topic format: `projects/{project}/topics/{topic}`.
  JobNotificationResponse({required this.message, required this.pubsubTopic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message':
          pulumi.Input.mapInputValue<MessageResponse, Map<String, dynamic>>(
            message,
            (value) => value.toMap(),
          ),
      'pubsubTopic': pubsubTopic,
    };
  }

  factory JobNotificationResponse.fromMap(Map<String, dynamic> map) {
    return JobNotificationResponse(
      message: pulumi.Input.fromValue(
        MessageResponse.fromMap(
          (map['message']! as Map).cast<String, dynamic>(),
        ),
      ),
      pubsubTopic: pulumi.Input.fromValue(map['pubsubTopic'] as String),
    );
  }
}
