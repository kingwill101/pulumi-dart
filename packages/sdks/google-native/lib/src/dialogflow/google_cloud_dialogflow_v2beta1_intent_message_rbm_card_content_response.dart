// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_card_content_rbm_media_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_rbm_suggestion_response.dart';

/// Rich Business Messaging (RBM) Card content
class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse {
  /// Optional. Description of the card (at most 2000 bytes). At least one of the title, description or media must be set.
  final pulumi.Input<String> description;
  /// Optional. However at least one of the title, description or media must be set. Media (image, GIF or a video) to include in the card.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaResponse> media;
  /// Optional. List of suggestions to include in the card.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse>> suggestions;
  /// Optional. Title of the card (at most 200 bytes). At least one of the title, description or media must be set.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse].
  /// [description] Optional. Description of the card (at most 2000 bytes). At least one of the title, description or media must be set.
  /// [media] Optional. However at least one of the title, description or media must be set. Media (image, GIF or a video) to include in the card.
  /// [suggestions] Optional. List of suggestions to include in the card.
  /// [title] Optional. Title of the card (at most 200 bytes). At least one of the title, description or media must be set.
  const GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse({
    required this.description,
    required this.media,
    required this.suggestions,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'media': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaResponse, Map<String, dynamic>>(media, (value) => value.toMap()),
      'suggestions': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse>, List<Map<String, dynamic>>>(suggestions, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      media: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaResponse.fromMap((map['media']! as Map).cast<String, dynamic>())),
      suggestions: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse>(map['suggestions']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
