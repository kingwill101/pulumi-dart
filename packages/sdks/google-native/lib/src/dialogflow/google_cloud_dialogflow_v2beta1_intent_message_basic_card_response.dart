// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card_button_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image_response.dart';

/// The basic card message. Useful for displaying information.
class GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse {
  /// Optional. The collection of card buttons.
  final pulumi.Input<
    List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse>
  >
  buttons;

  /// Required, unless image is present. The body text of the card.
  final pulumi.Input<String> formattedText;

  /// Optional. The image for the card.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageImageResponse>
  image;

  /// Optional. The subtitle of the card.
  final pulumi.Input<String> subtitle;

  /// Optional. The title of the card.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse].
  /// [buttons] Optional. The collection of card buttons.
  /// [formattedText] Required, unless image is present. The body text of the card.
  /// [image] Optional. The image for the card.
  /// [subtitle] Optional. The subtitle of the card.
  /// [title] Optional. The title of the card.
  GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse({
    required this.buttons,
    required this.formattedText,
    required this.image,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons':
          pulumi.Input.mapInputValue<
            List<
              GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse
            >,
            List<Map<String, dynamic>>
          >(
            buttons,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'formattedText': formattedText,
      'image':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowV2beta1IntentMessageImageResponse,
            Map<String, dynamic>
          >(image, (value) => value.toMap()),
      'subtitle': subtitle,
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageBasicCardResponse(
      buttons: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse
        >(
          map['buttons']!,
          (value) =>
              GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      formattedText: pulumi.Input.fromValue(map['formattedText'] as String),
      image: pulumi.Input.fromValue(
        GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap(
          (map['image']! as Map).cast<String, dynamic>(),
        ),
      ),
      subtitle: pulumi.Input.fromValue(map['subtitle'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
