// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_card_button.dart';

/// The card response message.
class GoogleCloudDialogflowV2IntentMessageCard {
  /// Optional. The collection of card buttons.
  final List<GoogleCloudDialogflowV2IntentMessageCardButton>? buttons;
  /// Optional. The public URI to an image file for the card.
  final String? imageUri;
  /// Optional. The subtitle of the card.
  final String? subtitle;
  /// Optional. The title of the card.
  final String? title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageCard].
  /// [buttons] Optional. The collection of card buttons.
  /// [imageUri] Optional. The public URI to an image file for the card.
  /// [subtitle] Optional. The subtitle of the card.
  /// [title] Optional. The title of the card.
  GoogleCloudDialogflowV2IntentMessageCard({
    this.buttons,
    this.imageUri,
    this.subtitle,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': ?buttons == null ? null : pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageCardButton, Map<String, dynamic>>(buttons!, (value) => value.toMap()),
      'imageUri': ?imageUri,
      'subtitle': ?subtitle,
      'title': ?title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageCard.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageCard(
      buttons: map['buttons'] == null ? null : pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageCardButton>(map['buttons'], (value) => GoogleCloudDialogflowV2IntentMessageCardButton.fromMap((value as Map).cast<String, dynamic>())),
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      subtitle: map['subtitle'] == null ? null : map['subtitle'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

