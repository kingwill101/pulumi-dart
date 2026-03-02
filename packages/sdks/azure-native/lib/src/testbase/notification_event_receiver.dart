// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_receiver_value.dart';

/// A notification event receivers.
class NotificationEventReceiver {
  /// The type of the notification event receiver.
  final pulumi.Input<String>? receiverType;
  /// The notification event receiver value.
  final pulumi.Input<NotificationReceiverValue>? receiverValue;

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
      'receiverValue': ?pulumi.Input.mapOptionalInputValue<NotificationReceiverValue, Map<String, dynamic>>(receiverValue, (value) => value.toMap()),
    };
  }

  factory NotificationEventReceiver.fromMap(Map<String, dynamic> map) {
    return NotificationEventReceiver(
      receiverType: map['receiverType'] == null ? null : (map['receiverType'] as String).input(),
      receiverValue: map['receiverValue'] == null ? null : (NotificationReceiverValue.fromMap((map['receiverValue'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

