// ignore_for_file: unused_element, unnecessary_cast


/// Opens the user's default dialer app with the specified phone number but does not dial automatically.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDialResponse {
  /// The phone number to fill in the default dialer app. This field should be in [E.164](https://en.wikipedia.org/wiki/E.164) format. An example of a correctly formatted phone number: +15556767888.
  final String phoneNumber;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDialResponse].
  /// [phoneNumber] The phone number to fill in the default dialer app. This field should be in [E.164](https://en.wikipedia.org/wiki/E.164) format. An example of a correctly formatted phone number: +15556767888.
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDialResponse({
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDialResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDialResponse(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}

