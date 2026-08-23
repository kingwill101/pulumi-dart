// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in E.164 format.
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCall].
  /// [phoneNumber] Transfer the call to a phone number in E.164 format.
  const CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCall({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
    };
  }

  factory CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCall.fromMap(Map<String, dynamic> map) {
    return CxFlowEventHandlerTriggerFulfillmentMessageTelephonyTransferCall(
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
    );
  }
}
