// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'message.dart';

/// Notification configurations.
class JobNotification {
  /// The attribute requirements of messages to be sent to this Pub/Sub topic. Without this field, no message will be sent.
  final pulumi.Input<Message>? message;
  /// The Pub/Sub topic where notifications like the job state changes will be published. The topic must exist in the same project as the job and billings will be charged to this project. If not specified, no Pub/Sub messages will be sent. Topic format: `projects/{project}/topics/{topic}`.
  final pulumi.Input<String>? pubsubTopic;

  /// Creates a new [JobNotification].
  /// [message] The attribute requirements of messages to be sent to this Pub/Sub topic. Without this field, no message will be sent.
  /// [pubsubTopic] The Pub/Sub topic where notifications like the job state changes will be published. The topic must exist in the same project as the job and billings will be charged to this project. If not specified, no Pub/Sub messages will be sent. Topic format: `projects/{project}/topics/{topic}`.
  JobNotification({
    this.message,
    this.pubsubTopic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?pulumi.Input.mapOptionalInputValue<Message, Map<String, dynamic>>(message, (value) => value.toMap()),
      'pubsubTopic': ?pubsubTopic,
    };
  }

  factory JobNotification.fromMap(Map<String, dynamic> map) {
    return JobNotification(
      message: map['message'] == null ? null : (Message.fromMap((map['message'] as Map).cast<String, dynamic>())).input(),
      pubsubTopic: map['pubsubTopic'] == null ? null : (map['pubsubTopic'] as String).input(),
    );
  }
}

