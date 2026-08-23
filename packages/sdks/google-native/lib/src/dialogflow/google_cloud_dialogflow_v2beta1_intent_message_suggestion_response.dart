// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The suggestion chip message that the user can tap to quickly post a reply to the conversation.
class GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse {
  /// The text shown the in the suggestion chip.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse].
  /// [title] The text shown the in the suggestion chip.
  const GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse({
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSuggestionResponse(
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
