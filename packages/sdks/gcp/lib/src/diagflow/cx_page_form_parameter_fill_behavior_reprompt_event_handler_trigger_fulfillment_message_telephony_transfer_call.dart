// ignore_for_file: unused_element, unnecessary_cast


class CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in E.164 format.
  final String phoneNumber;

  /// Creates a new [CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageTelephonyTransferCall].
  /// [phoneNumber] Transfer the call to a phone number in E.164 format.
  CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageTelephonyTransferCall({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
    };
  }

  factory CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageTelephonyTransferCall.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameterFillBehaviorRepromptEventHandlerTriggerFulfillmentMessageTelephonyTransferCall(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}

