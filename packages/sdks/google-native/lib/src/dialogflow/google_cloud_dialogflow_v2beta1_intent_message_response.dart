// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_browse_carousel_card_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_card_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_carousel_select_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_link_out_suggestion_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_list_select_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_media_content_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_quick_replies_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_carousel_card_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_standalone_card_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_text_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_simple_responses_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_suggestions_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_table_card_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_telephony_play_audio_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_telephony_synthesize_speech_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_telephony_transfer_call_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_text_response.dart';

/// Corresponds to the `Response` field in the Dialogflow console.
class GoogleCloudDialogflowV2beta1IntentMessageResponse {
  /// Displays a basic card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse> basicCard;
  /// Browse carousel card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardResponse> browseCarouselCard;
  /// Displays a card.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageCardResponse> card;
  /// Displays a carousel card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse> carouselSelect;
  /// Displays an image.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageImageResponse> image;
  /// Displays a link out suggestion chip for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestionResponse> linkOutSuggestion;
  /// Displays a list card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse> listSelect;
  /// The media content card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponse> mediaContent;
  /// A custom platform-specific response.
  final pulumi.Input<Map<String, String>> payload;
  /// Optional. The platform that this message is intended for.
  final pulumi.Input<String> platform;
  /// Displays quick replies.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse> quickReplies;
  /// Rich Business Messaging (RBM) carousel rich card response.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardResponse> rbmCarouselRichCard;
  /// Standalone Rich Business Messaging (RBM) rich card response.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardResponse> rbmStandaloneRichCard;
  /// Rich Business Messaging (RBM) text response. RBM allows businesses to send enriched and branded versions of SMS. See https://jibe.google.com/business-messaging.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmTextResponse> rbmText;
  /// Returns a voice or text-only response for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse> simpleResponses;
  /// Displays suggestion chips for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse> suggestions;
  /// Table card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageTableCardResponse> tableCard;
  /// Plays audio from a file in Telephony Gateway.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudioResponse> telephonyPlayAudio;
  /// Synthesizes speech in Telephony Gateway.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeechResponse> telephonySynthesizeSpeech;
  /// Transfers the call in Telephony Gateway.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCallResponse> telephonyTransferCall;
  /// Returns a text response.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageTextResponse> text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageResponse].
  /// [basicCard] Displays a basic card for Actions on Google.
  /// [browseCarouselCard] Browse carousel card for Actions on Google.
  /// [card] Displays a card.
  /// [carouselSelect] Displays a carousel card for Actions on Google.
  /// [image] Displays an image.
  /// [linkOutSuggestion] Displays a link out suggestion chip for Actions on Google.
  /// [listSelect] Displays a list card for Actions on Google.
  /// [mediaContent] The media content card for Actions on Google.
  /// [payload] A custom platform-specific response.
  /// [platform] Optional. The platform that this message is intended for.
  /// [quickReplies] Displays quick replies.
  /// [rbmCarouselRichCard] Rich Business Messaging (RBM) carousel rich card response.
  /// [rbmStandaloneRichCard] Standalone Rich Business Messaging (RBM) rich card response.
  /// [rbmText] Rich Business Messaging (RBM) text response. RBM allows businesses to send enriched and branded versions of SMS. See https://jibe.google.com/business-messaging.
  /// [simpleResponses] Returns a voice or text-only response for Actions on Google.
  /// [suggestions] Displays suggestion chips for Actions on Google.
  /// [tableCard] Table card for Actions on Google.
  /// [telephonyPlayAudio] Plays audio from a file in Telephony Gateway.
  /// [telephonySynthesizeSpeech] Synthesizes speech in Telephony Gateway.
  /// [telephonyTransferCall] Transfers the call in Telephony Gateway.
  /// [text] Returns a text response.
  const GoogleCloudDialogflowV2beta1IntentMessageResponse({
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
    required this.rbmCarouselRichCard,
    required this.rbmStandaloneRichCard,
    required this.rbmText,
    required this.simpleResponses,
    required this.suggestions,
    required this.tableCard,
    required this.telephonyPlayAudio,
    required this.telephonySynthesizeSpeech,
    required this.telephonyTransferCall,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicCard': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse, Map<String, dynamic>>(basicCard, (value) => value.toMap()),
      'browseCarouselCard': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardResponse, Map<String, dynamic>>(browseCarouselCard, (value) => value.toMap()),
      'card': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageCardResponse, Map<String, dynamic>>(card, (value) => value.toMap()),
      'carouselSelect': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse, Map<String, dynamic>>(carouselSelect, (value) => value.toMap()),
      'image': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageImageResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
      'linkOutSuggestion': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestionResponse, Map<String, dynamic>>(linkOutSuggestion, (value) => value.toMap()),
      'listSelect': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse, Map<String, dynamic>>(listSelect, (value) => value.toMap()),
      'mediaContent': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponse, Map<String, dynamic>>(mediaContent, (value) => value.toMap()),
      'payload': payload,
      'platform': platform,
      'quickReplies': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse, Map<String, dynamic>>(quickReplies, (value) => value.toMap()),
      'rbmCarouselRichCard': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardResponse, Map<String, dynamic>>(rbmCarouselRichCard, (value) => value.toMap()),
      'rbmStandaloneRichCard': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardResponse, Map<String, dynamic>>(rbmStandaloneRichCard, (value) => value.toMap()),
      'rbmText': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmTextResponse, Map<String, dynamic>>(rbmText, (value) => value.toMap()),
      'simpleResponses': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse, Map<String, dynamic>>(simpleResponses, (value) => value.toMap()),
      'suggestions': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse, Map<String, dynamic>>(suggestions, (value) => value.toMap()),
      'tableCard': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageTableCardResponse, Map<String, dynamic>>(tableCard, (value) => value.toMap()),
      'telephonyPlayAudio': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudioResponse, Map<String, dynamic>>(telephonyPlayAudio, (value) => value.toMap()),
      'telephonySynthesizeSpeech': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeechResponse, Map<String, dynamic>>(telephonySynthesizeSpeech, (value) => value.toMap()),
      'telephonyTransferCall': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCallResponse, Map<String, dynamic>>(telephonyTransferCall, (value) => value.toMap()),
      'text': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageTextResponse, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageResponse(
      basicCard: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse.fromMap((map['basicCard']! as Map).cast<String, dynamic>())),
      browseCarouselCard: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardResponse.fromMap((map['browseCarouselCard']! as Map).cast<String, dynamic>())),
      card: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageCardResponse.fromMap((map['card']! as Map).cast<String, dynamic>())),
      carouselSelect: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectResponse.fromMap((map['carouselSelect']! as Map).cast<String, dynamic>())),
      image: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap((map['image']! as Map).cast<String, dynamic>())),
      linkOutSuggestion: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestionResponse.fromMap((map['linkOutSuggestion']! as Map).cast<String, dynamic>())),
      listSelect: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageListSelectResponse.fromMap((map['listSelect']! as Map).cast<String, dynamic>())),
      mediaContent: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponse.fromMap((map['mediaContent']! as Map).cast<String, dynamic>())),
      payload: pulumi.Input.fromValue((map['payload'] as Map).cast<String, String>()),
      platform: pulumi.Input.fromValue(map['platform'] as String),
      quickReplies: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageQuickRepliesResponse.fromMap((map['quickReplies']! as Map).cast<String, dynamic>())),
      rbmCarouselRichCard: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardResponse.fromMap((map['rbmCarouselRichCard']! as Map).cast<String, dynamic>())),
      rbmStandaloneRichCard: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardResponse.fromMap((map['rbmStandaloneRichCard']! as Map).cast<String, dynamic>())),
      rbmText: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageRbmTextResponse.fromMap((map['rbmText']! as Map).cast<String, dynamic>())),
      simpleResponses: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageSimpleResponsesResponse.fromMap((map['simpleResponses']! as Map).cast<String, dynamic>())),
      suggestions: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse.fromMap((map['suggestions']! as Map).cast<String, dynamic>())),
      tableCard: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageTableCardResponse.fromMap((map['tableCard']! as Map).cast<String, dynamic>())),
      telephonyPlayAudio: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudioResponse.fromMap((map['telephonyPlayAudio']! as Map).cast<String, dynamic>())),
      telephonySynthesizeSpeech: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeechResponse.fromMap((map['telephonySynthesizeSpeech']! as Map).cast<String, dynamic>())),
      telephonyTransferCall: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCallResponse.fromMap((map['telephonyTransferCall']! as Map).cast<String, dynamic>())),
      text: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageTextResponse.fromMap((map['text']! as Map).cast<String, dynamic>())),
    );
  }
}

