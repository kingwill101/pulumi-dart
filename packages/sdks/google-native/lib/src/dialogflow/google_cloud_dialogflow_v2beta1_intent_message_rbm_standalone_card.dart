// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_card_content.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_standalone_card_card_orientation.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_standalone_card_thumbnail_image_alignment.dart';

/// Standalone Rich Business Messaging (RBM) rich card. Rich cards allow you to respond to users with more vivid content, e.g. with media and suggestions. You can group multiple rich cards into one using RbmCarouselCard but carousel cards will give you less control over the card layout.
class GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard {
  /// Card content.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent> cardContent;
  /// Orientation of the card.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation> cardOrientation;
  /// Required if orientation is horizontal. Image preview alignment for standalone cards with horizontal layout.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment>? thumbnailImageAlignment;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard].
  /// [cardContent] Card content.
  /// [cardOrientation] Orientation of the card.
  /// [thumbnailImageAlignment] Required if orientation is horizontal. Image preview alignment for standalone cards with horizontal layout.
  GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard({
    required this.cardContent,
    required this.cardOrientation,
    this.thumbnailImageAlignment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardContent': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent, Map<String, dynamic>>(cardContent, (value) => value.toMap()),
      'cardOrientation': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation, String>(cardOrientation, (value) => value.value),
      'thumbnailImageAlignment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment, String>(thumbnailImageAlignment, (value) => value.value),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard(
      cardContent: (GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromMap((map['cardContent'] as Map).cast<String, dynamic>())).input(),
      cardOrientation: (GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation.fromValue(map['cardOrientation'] as String)).input(),
      thumbnailImageAlignment: map['thumbnailImageAlignment'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment.fromValue(map['thumbnailImageAlignment'] as String)).input(),
    );
  }
}

