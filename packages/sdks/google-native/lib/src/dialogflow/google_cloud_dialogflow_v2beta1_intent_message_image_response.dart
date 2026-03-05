// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The image response message.
class GoogleCloudDialogflowV2beta1IntentMessageImageResponse {
  /// A text description of the image to be used for accessibility, e.g., screen readers. Required if image_uri is set for CarouselSelect.
  final pulumi.Input<String> accessibilityText;
  /// Optional. The public URI to an image file.
  final pulumi.Input<String> imageUri;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageImageResponse].
  /// [accessibilityText] A text description of the image to be used for accessibility, e.g., screen readers. Required if image_uri is set for CarouselSelect.
  /// [imageUri] Optional. The public URI to an image file.
  GoogleCloudDialogflowV2beta1IntentMessageImageResponse({
    required this.accessibilityText,
    required this.imageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibilityText': accessibilityText,
      'imageUri': imageUri,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageImageResponse(
      accessibilityText: pulumi.Input.fromValue(map['accessibilityText'] as String),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
    );
  }
}

