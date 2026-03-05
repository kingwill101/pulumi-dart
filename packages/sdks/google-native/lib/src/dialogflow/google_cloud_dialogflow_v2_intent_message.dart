// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_basic_card.dart';
import 'google_cloud_dialogflow_v2_intent_message_browse_carousel_card.dart';
import 'google_cloud_dialogflow_v2_intent_message_card.dart';
import 'google_cloud_dialogflow_v2_intent_message_carousel_select.dart';
import 'google_cloud_dialogflow_v2_intent_message_image.dart';
import 'google_cloud_dialogflow_v2_intent_message_link_out_suggestion.dart';
import 'google_cloud_dialogflow_v2_intent_message_list_select.dart';
import 'google_cloud_dialogflow_v2_intent_message_media_content.dart';
import 'google_cloud_dialogflow_v2_intent_message_platform.dart';
import 'google_cloud_dialogflow_v2_intent_message_quick_replies.dart';
import 'google_cloud_dialogflow_v2_intent_message_simple_responses.dart';
import 'google_cloud_dialogflow_v2_intent_message_suggestions.dart';
import 'google_cloud_dialogflow_v2_intent_message_table_card.dart';
import 'google_cloud_dialogflow_v2_intent_message_text.dart';

/// A rich response message. Corresponds to the intent `Response` field in the Dialogflow console. For more information, see [Rich response messages](https://cloud.google.com/dialogflow/docs/intents-rich-messages).
class GoogleCloudDialogflowV2IntentMessage {
  /// The basic card response for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageBasicCard>? basicCard;
  /// Browse carousel card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard>? browseCarouselCard;
  /// The card response.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageCard>? card;
  /// The carousel card response for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageCarouselSelect>? carouselSelect;
  /// The image response.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageImage>? image;
  /// The link out suggestion chip for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion>? linkOutSuggestion;
  /// The list card response for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageListSelect>? listSelect;
  /// The media content card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageMediaContent>? mediaContent;
  /// A custom platform-specific response.
  final pulumi.Input<Map<String, String>>? payload;
  /// Optional. The platform that this message is intended for.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessagePlatform>? platform;
  /// The quick replies response.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageQuickReplies>? quickReplies;
  /// The voice and text-only responses for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageSimpleResponses>? simpleResponses;
  /// The suggestion chips for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageSuggestions>? suggestions;
  /// Table card for Actions on Google.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageTableCard>? tableCard;
  /// The text response.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageText>? text;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessage].
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
  GoogleCloudDialogflowV2IntentMessage({
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
    this.simpleResponses,
    this.suggestions,
    this.tableCard,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicCard': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageBasicCard, Map<String, dynamic>>(basicCard, (value) => value.toMap()),
      'browseCarouselCard': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard, Map<String, dynamic>>(browseCarouselCard, (value) => value.toMap()),
      'card': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageCard, Map<String, dynamic>>(card, (value) => value.toMap()),
      'carouselSelect': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageCarouselSelect, Map<String, dynamic>>(carouselSelect, (value) => value.toMap()),
      'image': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'linkOutSuggestion': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion, Map<String, dynamic>>(linkOutSuggestion, (value) => value.toMap()),
      'listSelect': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageListSelect, Map<String, dynamic>>(listSelect, (value) => value.toMap()),
      'mediaContent': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageMediaContent, Map<String, dynamic>>(mediaContent, (value) => value.toMap()),
      'payload': ?payload,
      'platform': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessagePlatform, String>(platform, (value) => value.wireValue),
      'quickReplies': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageQuickReplies, Map<String, dynamic>>(quickReplies, (value) => value.toMap()),
      'simpleResponses': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageSimpleResponses, Map<String, dynamic>>(simpleResponses, (value) => value.toMap()),
      'suggestions': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageSuggestions, Map<String, dynamic>>(suggestions, (value) => value.toMap()),
      'tableCard': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageTableCard, Map<String, dynamic>>(tableCard, (value) => value.toMap()),
      'text': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2IntentMessage.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessage(
      basicCard: (() { final guardedValue = map['basicCard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageBasicCard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      browseCarouselCard: (() { final guardedValue = map['browseCarouselCard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      card: (() { final guardedValue = map['card']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageCard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      carouselSelect: (() { final guardedValue = map['carouselSelect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageCarouselSelect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkOutSuggestion: (() { final guardedValue = map['linkOutSuggestion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      listSelect: (() { final guardedValue = map['listSelect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageListSelect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mediaContent: (() { final guardedValue = map['mediaContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageMediaContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessagePlatform.fromValue(guardedValue as String)); })(),
      quickReplies: (() { final guardedValue = map['quickReplies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageQuickReplies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      simpleResponses: (() { final guardedValue = map['simpleResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageSimpleResponses.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      suggestions: (() { final guardedValue = map['suggestions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageSuggestions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableCard: (() { final guardedValue = map['tableCard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageTableCard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageText.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

