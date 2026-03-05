// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_suggestion.dart';

/// The collection of suggestions.
class GoogleCloudDialogflowV2IntentMessageSuggestions {
  /// The list of suggested replies.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageSuggestion>> suggestions;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageSuggestions].
  /// [suggestions] The list of suggested replies.
  GoogleCloudDialogflowV2IntentMessageSuggestions({
    required this.suggestions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'suggestions': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2IntentMessageSuggestion>, List<Map<String, dynamic>>>(suggestions, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageSuggestion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageSuggestions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageSuggestions(
      suggestions: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageSuggestion>(map['suggestions']!, (value) => GoogleCloudDialogflowV2IntentMessageSuggestion.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

