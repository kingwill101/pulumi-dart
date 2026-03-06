// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_suggestion_response.dart';

/// The collection of suggestions.
class GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse {
  /// The list of suggested replies.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse>> suggestions;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse].
  /// [suggestions] The list of suggested replies.
  const GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse({
    required this.suggestions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suggestions': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse>, List<Map<String, dynamic>>>(suggestions, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSuggestionsResponse(
      suggestions: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse>(map['suggestions']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

