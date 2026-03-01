// ignore_for_file: unused_element, unnecessary_cast


/// Represents a phone number for telephony integration. It allows for connecting a particular conversation over telephony.
class GoogleCloudDialogflowV2beta1ConversationPhoneNumberResponse {
  /// The phone number to connect to this conversation.
  final String phoneNumber;

  /// Creates a new [GoogleCloudDialogflowV2beta1ConversationPhoneNumberResponse].
  /// [phoneNumber] The phone number to connect to this conversation.
  GoogleCloudDialogflowV2beta1ConversationPhoneNumberResponse({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
    };
  }

  factory GoogleCloudDialogflowV2beta1ConversationPhoneNumberResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1ConversationPhoneNumberResponse(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}

