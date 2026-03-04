// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_browse_carousel_card_browse_carousel_card_item_response.dart';

/// Browse Carousel Card for Actions on Google. https://developers.google.com/actions/assistant/responses#browsing_carousel
class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardResponse {
  /// Optional. Settings for displaying the image. Applies to every image in items.
  final pulumi.Input<String> imageDisplayOptions;

  /// List of items in the Browse Carousel Card. Minimum of two items, maximum of ten.
  final pulumi.Input<
    List<
      GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse
    >
  >
  items;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardResponse].
  /// [imageDisplayOptions] Optional. Settings for displaying the image. Applies to every image in items.
  /// [items] List of items in the Browse Carousel Card. Minimum of two items, maximum of ten.
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardResponse({
    required this.imageDisplayOptions,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageDisplayOptions': imageDisplayOptions,
      'items':
          pulumi.Input.mapInputValue<
            List<
              GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse
            >,
            List<Map<String, dynamic>>
          >(
            items,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardResponse(
      imageDisplayOptions: pulumi.Input.fromValue(
        map['imageDisplayOptions'] as String,
      ),
      items: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse
        >(
          map['items']!,
          (value) =>
              GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
