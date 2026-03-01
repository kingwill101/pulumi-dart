// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_intent_message_basic_card_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_browse_carousel_card_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_card_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_carousel_select_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_image_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_link_out_suggestion_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_list_select_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_media_content_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_quick_replies_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_simple_responses_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_suggestions_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_table_card_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_text_response.dart';

/// A rich response message. Corresponds to the intent `Response` field in the Dialogflow console. For more information, see [Rich response messages](https://cloud.google.com/dialogflow/docs/intents-rich-messages).
class GoogleCloudDialogflowV2IntentMessageResponse {
  /// The basic card response for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageBasicCardResponse basicCard;
  /// Browse carousel card for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardResponse browseCarouselCard;
  /// The card response.
  final GoogleCloudDialogflowV2IntentMessageCardResponse card;
  /// The carousel card response for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageCarouselSelectResponse carouselSelect;
  /// The image response.
  final GoogleCloudDialogflowV2IntentMessageImageResponse image;
  /// The link out suggestion chip for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageLinkOutSuggestionResponse linkOutSuggestion;
  /// The list card response for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageListSelectResponse listSelect;
  /// The media content card for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageMediaContentResponse mediaContent;
  /// A custom platform-specific response.
  final Map<String, String> payload;
  /// Optional. The platform that this message is intended for.
  final String platform;
  /// The quick replies response.
  final GoogleCloudDialogflowV2IntentMessageQuickRepliesResponse quickReplies;
  /// The voice and text-only responses for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse simpleResponses;
  /// The suggestion chips for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageSuggestionsResponse suggestions;
  /// Table card for Actions on Google.
  final GoogleCloudDialogflowV2IntentMessageTableCardResponse tableCard;
  /// The text response.
  final GoogleCloudDialogflowV2IntentMessageTextResponse text;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageResponse].
  /// [basicCard] The basic card response for Actions on Google.
  /// [browseCarouselCard] Browse carousel card for Actions on Google.
  /// [card] The card response.
  /// [carouselSelect] The carousel card response for Actions on Google.
  /// [image] The image response.
  /// [linkOutSuggestion] The link out suggestion chip for Actions on Google.
  /// [listSelect] The list card response for Actions on Google.
  /// [mediaContent] The media content card for Actions on Google.
  /// [payload] A custom platform-specific response.
  /// [platform] Optional. The platform that this message is intended for.
  /// [quickReplies] The quick replies response.
  /// [simpleResponses] The voice and text-only responses for Actions on Google.
  /// [suggestions] The suggestion chips for Actions on Google.
  /// [tableCard] Table card for Actions on Google.
  /// [text] The text response.
  GoogleCloudDialogflowV2IntentMessageResponse({
    required this.basicCard,
    required this.browseCarouselCard,
    required this.card,
    required this.carouselSelect,
    required this.image,
    required this.linkOutSuggestion,
    required this.listSelect,
    required this.mediaContent,
    required this.payload,
    required this.platform,
    required this.quickReplies,
    required this.simpleResponses,
    required this.suggestions,
    required this.tableCard,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicCard': basicCard.toMap(),
      'browseCarouselCard': browseCarouselCard.toMap(),
      'card': card.toMap(),
      'carouselSelect': carouselSelect.toMap(),
      'image': image.toMap(),
      'linkOutSuggestion': linkOutSuggestion.toMap(),
      'listSelect': listSelect.toMap(),
      'mediaContent': mediaContent.toMap(),
      'payload': payload,
      'platform': platform,
      'quickReplies': quickReplies.toMap(),
      'simpleResponses': simpleResponses.toMap(),
      'suggestions': suggestions.toMap(),
      'tableCard': tableCard.toMap(),
      'text': text.toMap(),
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageResponse(
      basicCard: GoogleCloudDialogflowV2IntentMessageBasicCardResponse.fromMap((map['basicCard'] as Map).cast<String, dynamic>()),
      browseCarouselCard: GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardResponse.fromMap((map['browseCarouselCard'] as Map).cast<String, dynamic>()),
      card: GoogleCloudDialogflowV2IntentMessageCardResponse.fromMap((map['card'] as Map).cast<String, dynamic>()),
      carouselSelect: GoogleCloudDialogflowV2IntentMessageCarouselSelectResponse.fromMap((map['carouselSelect'] as Map).cast<String, dynamic>()),
      image: GoogleCloudDialogflowV2IntentMessageImageResponse.fromMap((map['image'] as Map).cast<String, dynamic>()),
      linkOutSuggestion: GoogleCloudDialogflowV2IntentMessageLinkOutSuggestionResponse.fromMap((map['linkOutSuggestion'] as Map).cast<String, dynamic>()),
      listSelect: GoogleCloudDialogflowV2IntentMessageListSelectResponse.fromMap((map['listSelect'] as Map).cast<String, dynamic>()),
      mediaContent: GoogleCloudDialogflowV2IntentMessageMediaContentResponse.fromMap((map['mediaContent'] as Map).cast<String, dynamic>()),
      payload: (map['payload'] as Map).cast<String, String>(),
      platform: map['platform'] as String,
      quickReplies: GoogleCloudDialogflowV2IntentMessageQuickRepliesResponse.fromMap((map['quickReplies'] as Map).cast<String, dynamic>()),
      simpleResponses: GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse.fromMap((map['simpleResponses'] as Map).cast<String, dynamic>()),
      suggestions: GoogleCloudDialogflowV2IntentMessageSuggestionsResponse.fromMap((map['suggestions'] as Map).cast<String, dynamic>()),
      tableCard: GoogleCloudDialogflowV2IntentMessageTableCardResponse.fromMap((map['tableCard'] as Map).cast<String, dynamic>()),
      text: GoogleCloudDialogflowV2IntentMessageTextResponse.fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}

