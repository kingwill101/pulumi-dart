// ignore_for_file: unused_element, unnecessary_cast


/// The image response message.
class GoogleCloudDialogflowV2IntentMessageImageResponse {
  /// Optional. A text description of the image to be used for accessibility, e.g., screen readers.
  final String accessibilityText;
  /// Optional. The public URI to an image file.
  final String imageUri;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageImageResponse].
  /// [accessibilityText] Optional. A text description of the image to be used for accessibility, e.g., screen readers.
  /// [imageUri] Optional. The public URI to an image file.
  GoogleCloudDialogflowV2IntentMessageImageResponse({
    required this.accessibilityText,
    required this.imageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibilityText': accessibilityText,
      'imageUri': imageUri,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageImageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageImageResponse(
      accessibilityText: map['accessibilityText'] as String,
      imageUri: map['imageUri'] as String,
    );
  }
}

