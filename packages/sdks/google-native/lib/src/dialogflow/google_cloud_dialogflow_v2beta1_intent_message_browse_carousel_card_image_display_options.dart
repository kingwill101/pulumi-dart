/// Optional. Settings for displaying the image. Applies to every image in items.
enum GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions {
  imageDisplayOptionsUnspecified("IMAGE_DISPLAY_OPTIONS_UNSPECIFIED"),
  gray("GRAY"),
  white("WHITE"),
  cropped("CROPPED"),
  blurredBackground("BLURRED_BACKGROUND");

  const GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardImageDisplayOptions value: $value');
  }
}
