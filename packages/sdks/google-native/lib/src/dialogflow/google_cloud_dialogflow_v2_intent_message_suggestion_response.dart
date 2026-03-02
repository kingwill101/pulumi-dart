// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The suggestion chip message that the user can tap to quickly post a reply to the conversation.
class GoogleCloudDialogflowV2IntentMessageSuggestionResponse {
  /// The text shown the in the suggestion chip.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageSuggestionResponse].
  /// [title] The text shown the in the suggestion chip.
  GoogleCloudDialogflowV2IntentMessageSuggestionResponse({
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageSuggestionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageSuggestionResponse(
      title: (map['title'] as String).input(),
    );
  }
}

