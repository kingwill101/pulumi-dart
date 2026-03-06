// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_basic_card_button.dart';
import 'google_cloud_dialogflow_v2_intent_message_image.dart';

/// The basic card message. Useful for displaying information.
class GoogleCloudDialogflowV2IntentMessageBasicCard {
  /// Optional. The collection of card buttons.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageBasicCardButton>>? buttons;
  /// Required, unless image is present. The body text of the card.
  final pulumi.Input<String>? formattedText;
  /// Optional. The image for the card.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageImage>? image;
  /// Optional. The subtitle of the card.
  final pulumi.Input<String>? subtitle;
  /// Optional. The title of the card.
  final pulumi.Input<String>? title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageBasicCard].
  /// [buttons] Optional. The collection of card buttons.
  /// [formattedText] Required, unless image is present. The body text of the card.
  /// [image] Optional. The image for the card.
  /// [subtitle] Optional. The subtitle of the card.
  /// [title] Optional. The title of the card.
  const GoogleCloudDialogflowV2IntentMessageBasicCard({
    this.buttons,
    this.formattedText,
    this.image,
    this.subtitle,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2IntentMessageBasicCardButton>, List<Map<String, dynamic>>>(buttons, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageBasicCardButton, Map<String, dynamic>>(value, (value) => value.toMap())),
      'formattedText': ?formattedText,
      'image': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'subtitle': ?subtitle,
      'title': ?title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageBasicCard.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageBasicCard(
      buttons: (() { final guardedValue = map['buttons']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageBasicCardButton>(guardedValue, (value) => GoogleCloudDialogflowV2IntentMessageBasicCardButton.fromMap((value as Map).cast<String, dynamic>()))); })(),
      formattedText: (() { final guardedValue = map['formattedText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subtitle: (() { final guardedValue = map['subtitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

