// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_card_button.dart';

/// The card response message.
class GoogleCloudDialogflowV2IntentMessageCard {
  /// Optional. The collection of card buttons.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageCardButton>>?
  buttons;

  /// Optional. The public URI to an image file for the card.
  final pulumi.Input<String>? imageUri;

  /// Optional. The subtitle of the card.
  final pulumi.Input<String>? subtitle;

  /// Optional. The title of the card.
  final pulumi.Input<String>? title;

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
      'buttons':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudDialogflowV2IntentMessageCardButton>,
            List<Map<String, dynamic>>
          >(
            buttons,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDialogflowV2IntentMessageCardButton,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'imageUri': ?imageUri,
      'subtitle': ?subtitle,
      'title': ?title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageCard.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageCard(
      buttons: (() {
        final guardedValue = map['buttons'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<GoogleCloudDialogflowV2IntentMessageCardButton>(
            guardedValue,
            (value) => GoogleCloudDialogflowV2IntentMessageCardButton.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      imageUri: (() {
        final guardedValue = map['imageUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subtitle: (() {
        final guardedValue = map['subtitle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
