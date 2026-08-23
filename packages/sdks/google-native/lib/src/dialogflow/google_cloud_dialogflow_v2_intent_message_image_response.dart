// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The image response message.
class GoogleCloudDialogflowV2IntentMessageImageResponse {
  /// Optional. A text description of the image to be used for accessibility, e.g., screen readers.
  final pulumi.Input<String> accessibilityText;
  /// Optional. The public URI to an image file.
  final pulumi.Input<String> imageUri;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageImageResponse].
  /// [accessibilityText] Optional. A text description of the image to be used for accessibility, e.g., screen readers.
  /// [imageUri] Optional. The public URI to an image file.
  const GoogleCloudDialogflowV2IntentMessageImageResponse({
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
      accessibilityText: pulumi.Input.fromValue(map['accessibilityText'] as String),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
    );
  }
}
