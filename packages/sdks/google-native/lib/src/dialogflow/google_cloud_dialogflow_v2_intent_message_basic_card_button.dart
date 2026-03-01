// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_intent_message_basic_card_button_open_uri_action.dart';

/// The button object that appears at the bottom of a card.
class GoogleCloudDialogflowV2IntentMessageBasicCardButton {
  /// Action to take when a user taps on the button.
  final GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction openUriAction;
  /// The title of the button.
  final String title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageBasicCardButton].
  /// [openUriAction] Action to take when a user taps on the button.
  /// [title] The title of the button.
  GoogleCloudDialogflowV2IntentMessageBasicCardButton({
    required this.openUriAction,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openUriAction': openUriAction.toMap(),
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageBasicCardButton(
      openUriAction: GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction.fromMap((map['openUriAction'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
    );
  }
}

