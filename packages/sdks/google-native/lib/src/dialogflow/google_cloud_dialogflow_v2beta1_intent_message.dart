// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_browse_carousel_card.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_card.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_carousel_select.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_link_out_suggestion.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_list_select.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_media_content.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_platform.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_quick_replies.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_carousel_card.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_standalone_card.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_text.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_simple_responses.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_suggestions.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_table_card.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_telephony_play_audio.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_telephony_synthesize_speech.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_telephony_transfer_call.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_text.dart';

/// Corresponds to the `Response` field in the Dialogflow console.
class GoogleCloudDialogflowV2beta1IntentMessage {
  /// Displays a basic card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageBasicCard>? basicCard;
  /// Browse carousel card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard>? browseCarouselCard;
  /// Displays a card.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageCard>? card;
  /// Displays a carousel card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect>? carouselSelect;
  /// Displays an image.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageImage>? image;
  /// Displays a link out suggestion chip for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion>? linkOutSuggestion;
  /// Displays a list card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageListSelect>? listSelect;
  /// The media content card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageMediaContent>? mediaContent;
  /// A custom platform-specific response.
  final pulumi.Input<Map<String, String>>? payload;
  /// Optional. The platform that this message is intended for.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessagePlatform>? platform;
  /// Displays quick replies.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageQuickReplies>? quickReplies;
  /// Rich Business Messaging (RBM) carousel rich card response.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard>? rbmCarouselRichCard;
  /// Standalone Rich Business Messaging (RBM) rich card response.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard>? rbmStandaloneRichCard;
  /// Rich Business Messaging (RBM) text response. RBM allows businesses to send enriched and branded versions of SMS. See https://jibe.google.com/business-messaging.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmText>? rbmText;
  /// Returns a voice or text-only response for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses>? simpleResponses;
  /// Displays suggestion chips for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageSuggestions>? suggestions;
  /// Table card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageTableCard>? tableCard;
  /// Plays audio from a file in Telephony Gateway.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio>? telephonyPlayAudio;
  /// Synthesizes speech in Telephony Gateway.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech>? telephonySynthesizeSpeech;
  /// Transfers the call in Telephony Gateway.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall>? telephonyTransferCall;
  /// Returns a text response.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageText>? text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessage].
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
  GoogleCloudDialogflowV2beta1IntentMessage({
    this.basicCard,
    this.browseCarouselCard,
    this.card,
    this.carouselSelect,
    this.image,
    this.linkOutSuggestion,
    this.listSelect,
    this.mediaContent,
    this.payload,
    this.platform,
    this.quickReplies,
    this.rbmCarouselRichCard,
    this.rbmStandaloneRichCard,
    this.rbmText,
    this.simpleResponses,
    this.suggestions,
    this.tableCard,
    this.telephonyPlayAudio,
    this.telephonySynthesizeSpeech,
    this.telephonyTransferCall,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicCard': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageBasicCard, Map<String, dynamic>>(basicCard, (value) => value.toMap()),
      'browseCarouselCard': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard, Map<String, dynamic>>(browseCarouselCard, (value) => value.toMap()),
      'card': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageCard, Map<String, dynamic>>(card, (value) => value.toMap()),
      'carouselSelect': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect, Map<String, dynamic>>(carouselSelect, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'linkOutSuggestion': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion, Map<String, dynamic>>(linkOutSuggestion, (value) => value.toMap()),
      'listSelect': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageListSelect, Map<String, dynamic>>(listSelect, (value) => value.toMap()),
      'mediaContent': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageMediaContent, Map<String, dynamic>>(mediaContent, (value) => value.toMap()),
      'payload': ?payload,
      'platform': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessagePlatform, String>(platform, (value) => value.value),
      'quickReplies': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageQuickReplies, Map<String, dynamic>>(quickReplies, (value) => value.toMap()),
      'rbmCarouselRichCard': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard, Map<String, dynamic>>(rbmCarouselRichCard, (value) => value.toMap()),
      'rbmStandaloneRichCard': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard, Map<String, dynamic>>(rbmStandaloneRichCard, (value) => value.toMap()),
      'rbmText': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmText, Map<String, dynamic>>(rbmText, (value) => value.toMap()),
      'simpleResponses': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses, Map<String, dynamic>>(simpleResponses, (value) => value.toMap()),
      'suggestions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageSuggestions, Map<String, dynamic>>(suggestions, (value) => value.toMap()),
      'tableCard': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageTableCard, Map<String, dynamic>>(tableCard, (value) => value.toMap()),
      'telephonyPlayAudio': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio, Map<String, dynamic>>(telephonyPlayAudio, (value) => value.toMap()),
      'telephonySynthesizeSpeech': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech, Map<String, dynamic>>(telephonySynthesizeSpeech, (value) => value.toMap()),
      'telephonyTransferCall': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall, Map<String, dynamic>>(telephonyTransferCall, (value) => value.toMap()),
      'text': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessage(
      basicCard: map['basicCard'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageBasicCard.fromMap((map['basicCard'] as Map).cast<String, dynamic>())).input(),
      browseCarouselCard: map['browseCarouselCard'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard.fromMap((map['browseCarouselCard'] as Map).cast<String, dynamic>())).input(),
      card: map['card'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageCard.fromMap((map['card'] as Map).cast<String, dynamic>())).input(),
      carouselSelect: map['carouselSelect'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.fromMap((map['carouselSelect'] as Map).cast<String, dynamic>())).input(),
      image: map['image'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
      linkOutSuggestion: map['linkOutSuggestion'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion.fromMap((map['linkOutSuggestion'] as Map).cast<String, dynamic>())).input(),
      listSelect: map['listSelect'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageListSelect.fromMap((map['listSelect'] as Map).cast<String, dynamic>())).input(),
      mediaContent: map['mediaContent'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageMediaContent.fromMap((map['mediaContent'] as Map).cast<String, dynamic>())).input(),
      payload: map['payload'] == null ? null : ((map['payload'] as Map).cast<String, String>()).input(),
      platform: map['platform'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessagePlatform.fromValue(map['platform'] as String)).input(),
      quickReplies: map['quickReplies'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.fromMap((map['quickReplies'] as Map).cast<String, dynamic>())).input(),
      rbmCarouselRichCard: map['rbmCarouselRichCard'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard.fromMap((map['rbmCarouselRichCard'] as Map).cast<String, dynamic>())).input(),
      rbmStandaloneRichCard: map['rbmStandaloneRichCard'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard.fromMap((map['rbmStandaloneRichCard'] as Map).cast<String, dynamic>())).input(),
      rbmText: map['rbmText'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageRbmText.fromMap((map['rbmText'] as Map).cast<String, dynamic>())).input(),
      simpleResponses: map['simpleResponses'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.fromMap((map['simpleResponses'] as Map).cast<String, dynamic>())).input(),
      suggestions: map['suggestions'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageSuggestions.fromMap((map['suggestions'] as Map).cast<String, dynamic>())).input(),
      tableCard: map['tableCard'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageTableCard.fromMap((map['tableCard'] as Map).cast<String, dynamic>())).input(),
      telephonyPlayAudio: map['telephonyPlayAudio'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio.fromMap((map['telephonyPlayAudio'] as Map).cast<String, dynamic>())).input(),
      telephonySynthesizeSpeech: map['telephonySynthesizeSpeech'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.fromMap((map['telephonySynthesizeSpeech'] as Map).cast<String, dynamic>())).input(),
      telephonyTransferCall: map['telephonyTransferCall'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall.fromMap((map['telephonyTransferCall'] as Map).cast<String, dynamic>())).input(),
      text: map['text'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageText.fromMap((map['text'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

