import 'package:pulumi/pulumi.dart' as pulumi;

/// Required if orientation is horizontal. Image preview alignment for standalone cards with horizontal layout.
enum GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment implements pulumi.PulumiEnum<String> {
  thumbnailImageAlignmentUnspecified("THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED"),
  left("LEFT"),
  right("RIGHT");

  const GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment value: $value');
  }
}
