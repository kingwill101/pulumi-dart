// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The image response message.
class GoogleCloudDialogflowV2IntentMessageImage {
  /// Optional. A text description of the image to be used for accessibility, e.g., screen readers.
  final pulumi.Input<String>? accessibilityText;
  /// Optional. The public URI to an image file.
  final pulumi.Input<String>? imageUri;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageImage].
  /// [accessibilityText] Optional. A text description of the image to be used for accessibility, e.g., screen readers.
  /// [imageUri] Optional. The public URI to an image file.
  GoogleCloudDialogflowV2IntentMessageImage({
    this.accessibilityText,
    this.imageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibilityText': ?accessibilityText,
      'imageUri': ?imageUri,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageImage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageImage(
      accessibilityText: map['accessibilityText'] == null ? null : (map['accessibilityText'] as String).input(),
      imageUri: map['imageUri'] == null ? null : (map['imageUri'] as String).input(),
    );
  }
}

