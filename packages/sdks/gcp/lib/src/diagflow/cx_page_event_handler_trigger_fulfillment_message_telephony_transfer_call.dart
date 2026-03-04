// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageEventHandlerTriggerFulfillmentMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in E.164 format.
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [CxPageEventHandlerTriggerFulfillmentMessageTelephonyTransferCall].
  /// [phoneNumber] Transfer the call to a phone number in E.164 format.
  CxPageEventHandlerTriggerFulfillmentMessageTelephonyTransferCall({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'phoneNumber': phoneNumber};
  }

  factory CxPageEventHandlerTriggerFulfillmentMessageTelephonyTransferCall.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxPageEventHandlerTriggerFulfillmentMessageTelephonyTransferCall(
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
    );
  }
}
