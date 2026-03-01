// ignore_for_file: unused_element, unnecessary_cast


/// Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint.
class GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCallResponse {
  /// Transfer the call to a phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164).
  final String phoneNumber;

  /// Creates a new [GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCallResponse].
  /// [phoneNumber] Transfer the call to a phone number in [E.164 format](https://en.wikipedia.org/wiki/E.164).
  GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCallResponse({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
    };
  }

  factory GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCallResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCallResponse(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}

