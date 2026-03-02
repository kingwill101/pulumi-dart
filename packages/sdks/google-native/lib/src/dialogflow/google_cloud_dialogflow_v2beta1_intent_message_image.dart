// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The image response message.
class GoogleCloudDialogflowV2beta1IntentMessageImage {
  /// A text description of the image to be used for accessibility, e.g., screen readers. Required if image_uri is set for CarouselSelect.
  final pulumi.Input<String>? accessibilityText;
  /// Optional. The public URI to an image file.
  final pulumi.Input<String>? imageUri;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageImage].
  /// [accessibilityText] A text description of the image to be used for accessibility, e.g., screen readers. Required if image_uri is set for CarouselSelect.
  /// [imageUri] Optional. The public URI to an image file.
  GoogleCloudDialogflowV2beta1IntentMessageImage({
    this.accessibilityText,
    this.imageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibilityText': ?accessibilityText,
      'imageUri': ?imageUri,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageImage(
      accessibilityText: map['accessibilityText'] == null ? null : (map['accessibilityText']! as String).input(),
      imageUri: map['imageUri'] == null ? null : (map['imageUri']! as String).input(),
    );
  }
}

