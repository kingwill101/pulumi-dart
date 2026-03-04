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

  factory GoogleCloudDialogflowV2IntentMessageImage.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageImage(
      accessibilityText: (() {
        final guardedValue = map['accessibilityText'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageUri: (() {
        final guardedValue = map['imageUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
