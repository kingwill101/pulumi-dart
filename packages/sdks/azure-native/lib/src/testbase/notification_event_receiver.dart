// ignore_for_file: unused_element, unnecessary_cast

import 'notification_receiver_value.dart';

/// A notification event receivers.
class NotificationEventReceiver {
  /// The type of the notification event receiver.
  final String? receiverType;
  /// The notification event receiver value.
  final NotificationReceiverValue? receiverValue;

  /// Creates a new [NotificationEventReceiver].
  /// [receiverType] The type of the notification event receiver.
  /// [receiverValue] The notification event receiver value.
  NotificationEventReceiver({
    this.receiverType,
    this.receiverValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiverType': ?receiverType,
      'receiverValue': ?receiverValue == null ? null : receiverValue!.toMap(),
    };
  }

  factory NotificationEventReceiver.fromMap(Map<String, dynamic> map) {
    return NotificationEventReceiver(
      receiverType: map['receiverType'] == null ? null : map['receiverType'] as String,
      receiverValue: map['receiverValue'] == null ? null : NotificationReceiverValue.fromMap((map['receiverValue'] as Map).cast<String, dynamic>()),
    );
  }
}

