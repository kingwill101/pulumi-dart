// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_card_button_response.dart';

/// The card response message.
class GoogleCloudDialogflowV2IntentMessageCardResponse {
  /// Optional. The collection of card buttons.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageCardButtonResponse>> buttons;
  /// Optional. The public URI to an image file for the card.
  final pulumi.Input<String> imageUri;
  /// Optional. The subtitle of the card.
  final pulumi.Input<String> subtitle;
  /// Optional. The title of the card.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageCardResponse].
  /// [buttons] Optional. The collection of card buttons.
  /// [imageUri] Optional. The public URI to an image file for the card.
  /// [subtitle] Optional. The subtitle of the card.
  /// [title] Optional. The title of the card.
  const GoogleCloudDialogflowV2IntentMessageCardResponse({
    required this.buttons,
    required this.imageUri,
    required this.subtitle,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2IntentMessageCardButtonResponse>, List<Map<String, dynamic>>>(buttons, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageCardButtonResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageUri': imageUri,
      'subtitle': subtitle,
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageCardResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageCardResponse(
      buttons: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageCardButtonResponse>(map['buttons']!, (value) => GoogleCloudDialogflowV2IntentMessageCardButtonResponse.fromMap((value as Map).cast<String, dynamic>()))),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
      subtitle: pulumi.Input.fromValue(map['subtitle'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
