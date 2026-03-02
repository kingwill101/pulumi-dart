// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_browse_carousel_card_browse_carousel_card_item.dart';
import 'google_cloud_dialogflow_v2_intent_message_browse_carousel_card_image_display_options.dart';

/// Browse Carousel Card for Actions on Google. https://developers.google.com/actions/assistant/responses#browsing_carousel
class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard {
  /// Optional. Settings for displaying the image. Applies to every image in items.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions>? imageDisplayOptions;
  /// List of items in the Browse Carousel Card. Minimum of two items, maximum of ten.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>> items;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard].
  /// [imageDisplayOptions] Optional. Settings for displaying the image. Applies to every image in items.
  /// [items] List of items in the Browse Carousel Card. Minimum of two items, maximum of ten.
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard({
    this.imageDisplayOptions,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageDisplayOptions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions, String>(imageDisplayOptions, (value) => value.value),
      'items': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard(
      imageDisplayOptions: map['imageDisplayOptions'] == null ? null : (GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardImageDisplayOptions.fromValue(map['imageDisplayOptions'] as String)).input(),
      items: (pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>(map['items'], (value) => GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

