// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card_button_open_uri_action_response.dart';

/// The button object that appears at the bottom of a card.
class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse {
  /// Action to take when a user taps on the button.
  final pulumi.Input<
    GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriActionResponse
  >
  openUriAction;

  /// The title of the button.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse].
  /// [openUriAction] Action to take when a user taps on the button.
  /// [title] The title of the button.
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse({
    required this.openUriAction,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openUriAction':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriActionResponse,
            Map<String, dynamic>
          >(openUriAction, (value) => value.toMap()),
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse(
      openUriAction: pulumi.Input.fromValue(
        GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriActionResponse.fromMap(
          (map['openUriAction']! as Map).cast<String, dynamic>(),
        ),
      ),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
