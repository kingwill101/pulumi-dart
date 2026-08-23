// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageEntryFulfillmentMessageTelephonyTransferCall {
  /// Transfer the call to a phone number in E.164 format.
  final pulumi.Input<String> phoneNumber;

  /// Creates a new [CxPageEntryFulfillmentMessageTelephonyTransferCall].
  /// [phoneNumber] Transfer the call to a phone number in E.164 format.
  const CxPageEntryFulfillmentMessageTelephonyTransferCall({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
    };
  }

  factory CxPageEntryFulfillmentMessageTelephonyTransferCall.fromMap(Map<String, dynamic> map) {
    return CxPageEntryFulfillmentMessageTelephonyTransferCall(
      phoneNumber: pulumi.Input.fromValue(map['phoneNumber'] as String),
    );
  }
}
