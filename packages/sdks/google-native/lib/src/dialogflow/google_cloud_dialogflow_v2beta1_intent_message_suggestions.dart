// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_suggestion.dart';

/// The collection of suggestions.
class GoogleCloudDialogflowV2beta1IntentMessageSuggestions {
  /// The list of suggested replies.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageSuggestion>> suggestions;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageSuggestions].
  /// [suggestions] The list of suggested replies.
  const GoogleCloudDialogflowV2beta1IntentMessageSuggestions({
    required this.suggestions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suggestions': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageSuggestion>, List<Map<String, dynamic>>>(suggestions, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageSuggestion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSuggestions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSuggestions(
      suggestions: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageSuggestion>(map['suggestions']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageSuggestion.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
