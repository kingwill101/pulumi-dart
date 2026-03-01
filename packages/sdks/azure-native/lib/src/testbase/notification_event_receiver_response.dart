// ignore_for_file: unused_element, unnecessary_cast

import 'notification_receiver_value_response.dart';

/// A notification event receivers.
class NotificationEventReceiverResponse {
  /// The type of the notification event receiver.
  final String? receiverType;
  /// The notification event receiver value.
  final NotificationReceiverValueResponse? receiverValue;

  /// Creates a new [NotificationEventReceiverResponse].
  /// [receiverType] The type of the notification event receiver.
  /// [receiverValue] The notification event receiver value.
  NotificationEventReceiverResponse({
    this.receiverType,
    this.receiverValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiverType': ?receiverType,
      'receiverValue': ?receiverValue == null ? null : receiverValue!.toMap(),
    };
  }

  factory NotificationEventReceiverResponse.fromMap(Map<String, dynamic> map) {
    return NotificationEventReceiverResponse(
      receiverType: map['receiverType'] == null ? null : map['receiverType'] as String,
      receiverValue: map['receiverValue'] == null ? null : NotificationReceiverValueResponse.fromMap((map['receiverValue'] as Map).cast<String, dynamic>()),
    );
  }
}

