// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_card_content_rbm_media.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggestion.dart';

/// Rich Business Messaging (RBM) Card content
class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent {
  /// Optional. Description of the card (at most 2000 bytes). At least one of the title, description or media must be set.
  final pulumi.Input<String>? description;
  /// Optional. However at least one of the title, description or media must be set. Media (image, GIF or a video) to include in the card.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia>? media;
  /// Optional. List of suggestions to include in the card.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>>? suggestions;
  /// Optional. Title of the card (at most 200 bytes). At least one of the title, description or media must be set.
  final pulumi.Input<String>? title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent].
  /// [description] Optional. Description of the card (at most 2000 bytes). At least one of the title, description or media must be set.
  /// [media] Optional. However at least one of the title, description or media must be set. Media (image, GIF or a video) to include in the card.
  /// [suggestions] Optional. List of suggestions to include in the card.
  /// [title] Optional. Title of the card (at most 200 bytes). At least one of the title, description or media must be set.
  GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent({
    this.description,
    this.media,
    this.suggestions,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'media': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia, Map<String, dynamic>>(media, (value) => value.toMap()),
      'suggestions': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>, List<Map<String, dynamic>>>(suggestions, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'title': ?title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      media: map['media'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia.fromMap((map['media'] as Map).cast<String, dynamic>())).input(),
      suggestions: map['suggestions'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>(map['suggestions'], (value) => GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
    );
  }
}

