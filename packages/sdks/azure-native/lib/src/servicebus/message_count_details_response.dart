// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message Count Details.
class MessageCountDetailsResponse {
  /// Number of active messages in the queue, topic, or subscription.
  final pulumi.Input<double> activeMessageCount;
  /// Number of messages that are dead lettered.
  final pulumi.Input<double> deadLetterMessageCount;
  /// Number of scheduled messages.
  final pulumi.Input<double> scheduledMessageCount;
  /// Number of messages transferred into dead letters.
  final pulumi.Input<double> transferDeadLetterMessageCount;
  /// Number of messages transferred to another queue, topic, or subscription.
  final pulumi.Input<double> transferMessageCount;

  /// Creates a new [MessageCountDetailsResponse].
  /// [activeMessageCount] Number of active messages in the queue, topic, or subscription.
  /// [deadLetterMessageCount] Number of messages that are dead lettered.
  /// [scheduledMessageCount] Number of scheduled messages.
  /// [transferDeadLetterMessageCount] Number of messages transferred into dead letters.
  /// [transferMessageCount] Number of messages transferred to another queue, topic, or subscription.
  const MessageCountDetailsResponse({
    required this.activeMessageCount,
    required this.deadLetterMessageCount,
    required this.scheduledMessageCount,
    required this.transferDeadLetterMessageCount,
    required this.transferMessageCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeMessageCount': activeMessageCount,
      'deadLetterMessageCount': deadLetterMessageCount,
      'scheduledMessageCount': scheduledMessageCount,
      'transferDeadLetterMessageCount': transferDeadLetterMessageCount,
      'transferMessageCount': transferMessageCount,
    };
  }

  factory MessageCountDetailsResponse.fromMap(Map<String, dynamic> map) {
    return MessageCountDetailsResponse(
      activeMessageCount: pulumi.Input.fromValue(map['activeMessageCount'] as double),
      deadLetterMessageCount: pulumi.Input.fromValue(map['deadLetterMessageCount'] as double),
      scheduledMessageCount: pulumi.Input.fromValue(map['scheduledMessageCount'] as double),
      transferDeadLetterMessageCount: pulumi.Input.fromValue(map['transferDeadLetterMessageCount'] as double),
      transferMessageCount: pulumi.Input.fromValue(map['transferMessageCount'] as double),
    );
  }
}

