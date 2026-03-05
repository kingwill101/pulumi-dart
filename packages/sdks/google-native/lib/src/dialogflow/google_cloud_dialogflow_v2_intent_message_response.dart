// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageBasicCardResponse> basicCard;
  /// Browse carousel card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardResponse> browseCarouselCard;
  /// The card response.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageCardResponse> card;
  /// The carousel card response for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageCarouselSelectResponse> carouselSelect;
  /// The image response.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageImageResponse> image;
  /// The link out suggestion chip for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageLinkOutSuggestionResponse> linkOutSuggestion;
  /// The list card response for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageListSelectResponse> listSelect;
  /// The media content card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageMediaContentResponse> mediaContent;
  /// A custom platform-specific response.
  final pulumi.Input<Map<String, String>> payload;
  /// Optional. The platform that this message is intended for.
  final pulumi.Input<String> platform;
  /// The quick replies response.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageQuickRepliesResponse> quickReplies;
  /// The voice and text-only responses for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse> simpleResponses;
  /// The suggestion chips for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageSuggestionsResponse> suggestions;
  /// Table card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageTableCardResponse> tableCard;
  /// The text response.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageTextResponse> text;

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
      'basicCard': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageBasicCardResponse, Map<String, dynamic>>(basicCard, (value) => value.toMap()),
      'browseCarouselCard': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardResponse, Map<String, dynamic>>(browseCarouselCard, (value) => value.toMap()),
      'card': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageCardResponse, Map<String, dynamic>>(card, (value) => value.toMap()),
      'carouselSelect': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageCarouselSelectResponse, Map<String, dynamic>>(carouselSelect, (value) => value.toMap()),
      'image': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageImageResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
      'linkOutSuggestion': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageLinkOutSuggestionResponse, Map<String, dynamic>>(linkOutSuggestion, (value) => value.toMap()),
      'listSelect': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageListSelectResponse, Map<String, dynamic>>(listSelect, (value) => value.toMap()),
      'mediaContent': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageMediaContentResponse, Map<String, dynamic>>(mediaContent, (value) => value.toMap()),
      'payload': payload,
      'platform': platform,
      'quickReplies': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageQuickRepliesResponse, Map<String, dynamic>>(quickReplies, (value) => value.toMap()),
      'simpleResponses': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse, Map<String, dynamic>>(simpleResponses, (value) => value.toMap()),
      'suggestions': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageSuggestionsResponse, Map<String, dynamic>>(suggestions, (value) => value.toMap()),
      'tableCard': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageTableCardResponse, Map<String, dynamic>>(tableCard, (value) => value.toMap()),
      'text': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageTextResponse, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageResponse(
      basicCard: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageBasicCardResponse.fromMap((map['basicCard']! as Map).cast<String, dynamic>())),
      browseCarouselCard: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardResponse.fromMap((map['browseCarouselCard']! as Map).cast<String, dynamic>())),
      card: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageCardResponse.fromMap((map['card']! as Map).cast<String, dynamic>())),
      carouselSelect: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageCarouselSelectResponse.fromMap((map['carouselSelect']! as Map).cast<String, dynamic>())),
      image: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageImageResponse.fromMap((map['image']! as Map).cast<String, dynamic>())),
      linkOutSuggestion: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageLinkOutSuggestionResponse.fromMap((map['linkOutSuggestion']! as Map).cast<String, dynamic>())),
      listSelect: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageListSelectResponse.fromMap((map['listSelect']! as Map).cast<String, dynamic>())),
      mediaContent: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageMediaContentResponse.fromMap((map['mediaContent']! as Map).cast<String, dynamic>())),
      payload: pulumi.Input.fromValue((map['payload'] as Map).cast<String, String>()),
      platform: pulumi.Input.fromValue(map['platform'] as String),
      quickReplies: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageQuickRepliesResponse.fromMap((map['quickReplies']! as Map).cast<String, dynamic>())),
      simpleResponses: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageSimpleResponsesResponse.fromMap((map['simpleResponses']! as Map).cast<String, dynamic>())),
      suggestions: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageSuggestionsResponse.fromMap((map['suggestions']! as Map).cast<String, dynamic>())),
      tableCard: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageTableCardResponse.fromMap((map['tableCard']! as Map).cast<String, dynamic>())),
      text: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageTextResponse.fromMap((map['text']! as Map).cast<String, dynamic>())),
    );
  }
}

