// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_card_content_response.dart';

/// Carousel Rich Business Messaging (RBM) rich card. Rich cards allow you to respond to users with more vivid content, e.g. with media and suggestions. If you want to show a single card with more control over the layout, please use RbmStandaloneCard instead.
class GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardResponse {
  /// The cards in the carousel. A carousel must have at least 2 cards and at most 10.
  final pulumi.Input<
    List<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse>
  >
  cardContents;

  /// The width of the cards in the carousel.
  final pulumi.Input<String> cardWidth;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardResponse].
  /// [cardContents] The cards in the carousel. A carousel must have at least 2 cards and at most 10.
  /// [cardWidth] The width of the cards in the carousel.
  GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardResponse({
    required this.cardContents,
    required this.cardWidth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardContents':
          pulumi.Input.mapInputValue<
            List<
              GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse
            >,
            List<Map<String, dynamic>>
          >(
            cardContents,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'cardWidth': cardWidth,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardResponse(
      cardContents: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse
        >(
          map['cardContents']!,
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      cardWidth: pulumi.Input.fromValue(map['cardWidth'] as String),
    );
  }
}
