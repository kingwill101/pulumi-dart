// ignore_for_file: unused_element, unnecessary_cast


/// Message Count Details.
class MessageCountDetailsResponse {
  /// Number of active messages in the queue, topic, or subscription.
  final double activeMessageCount;
  /// Number of messages that are dead lettered.
  final double deadLetterMessageCount;
  /// Number of scheduled messages.
  final double scheduledMessageCount;
  /// Number of messages transferred into dead letters.
  final double transferDeadLetterMessageCount;
  /// Number of messages transferred to another queue, topic, or subscription.
  final double transferMessageCount;

  /// Creates a new [MessageCountDetailsResponse].
  /// [activeMessageCount] Number of active messages in the queue, topic, or subscription.
  /// [deadLetterMessageCount] Number of messages that are dead lettered.
  /// [scheduledMessageCount] Number of scheduled messages.
  /// [transferDeadLetterMessageCount] Number of messages transferred into dead letters.
  /// [transferMessageCount] Number of messages transferred to another queue, topic, or subscription.
  MessageCountDetailsResponse({
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
      activeMessageCount: map['activeMessageCount'] as double,
      deadLetterMessageCount: map['deadLetterMessageCount'] as double,
      scheduledMessageCount: map['scheduledMessageCount'] as double,
      transferDeadLetterMessageCount: map['transferDeadLetterMessageCount'] as double,
      transferMessageCount: map['transferMessageCount'] as double,
    );
  }
}

