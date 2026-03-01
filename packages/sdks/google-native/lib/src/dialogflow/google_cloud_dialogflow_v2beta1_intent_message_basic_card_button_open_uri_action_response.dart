// ignore_for_file: unused_element, unnecessary_cast


/// Opens the given URI.
class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriActionResponse {
  /// The HTTP or HTTPS scheme URI.
  final String uri;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriActionResponse].
  /// [uri] The HTTP or HTTPS scheme URI.
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriActionResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriActionResponse(
      uri: map['uri'] as String,
    );
  }
}

