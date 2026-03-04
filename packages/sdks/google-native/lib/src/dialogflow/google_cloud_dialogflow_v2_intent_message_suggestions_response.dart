// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_suggestion_response.dart';

/// The collection of suggestions.
class GoogleCloudDialogflowV2IntentMessageSuggestionsResponse {
  /// The list of suggested replies.
  final pulumi.Input<
    List<GoogleCloudDialogflowV2IntentMessageSuggestionResponse>
  >
  suggestions;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageSuggestionsResponse].
  /// [suggestions] The list of suggested replies.
  GoogleCloudDialogflowV2IntentMessageSuggestionsResponse({
    required this.suggestions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suggestions':
          pulumi.Input.mapInputValue<
            List<GoogleCloudDialogflowV2IntentMessageSuggestionResponse>,
            List<Map<String, dynamic>>
          >(
            suggestions,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowV2IntentMessageSuggestionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageSuggestionsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageSuggestionsResponse(
      suggestions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudDialogflowV2IntentMessageSuggestionResponse
        >(
          map['suggestions']!,
          (value) =>
              GoogleCloudDialogflowV2IntentMessageSuggestionResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
