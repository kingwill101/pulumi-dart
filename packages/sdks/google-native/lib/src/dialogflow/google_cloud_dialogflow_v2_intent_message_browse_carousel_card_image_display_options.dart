/// Optional. Settings for displaying the image. Applies to every image in items.
enum GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions {
  imageDisplayOptionsUnspecified("IMAGE_DISPLAY_OPTIONS_UNSPECIFIED"),
  gray("GRAY"),
  white("WHITE"),
  cropped("CROPPED"),
  blurredBackground("BLURRED_BACKGROUND");

  const GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions value: $value');
  }
}

