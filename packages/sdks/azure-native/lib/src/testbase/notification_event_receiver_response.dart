// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_receiver_value_response.dart';

/// A notification event receivers.
class NotificationEventReceiverResponse {
  /// The type of the notification event receiver.
  final pulumi.Input<String>? receiverType;
  /// The notification event receiver value.
  final pulumi.Input<NotificationReceiverValueResponse>? receiverValue;

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
      'receiverValue': ?pulumi.Input.mapOptionalInputValue<NotificationReceiverValueResponse, Map<String, dynamic>>(receiverValue, (value) => value.toMap()),
    };
  }

  factory NotificationEventReceiverResponse.fromMap(Map<String, dynamic> map) {
    return NotificationEventReceiverResponse(
      receiverType: (() { final guardedValue = map['receiverType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      receiverValue: (() { final guardedValue = map['receiverValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotificationReceiverValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

