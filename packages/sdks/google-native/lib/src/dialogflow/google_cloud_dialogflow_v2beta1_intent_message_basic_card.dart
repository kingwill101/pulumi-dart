// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_basic_card_button.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image.dart';

/// The basic card message. Useful for displaying information.
class GoogleCloudDialogflowV2beta1IntentMessageBasicCard {
  /// Optional. The collection of card buttons.
  final pulumi.Input<List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>>? buttons;
  /// Required, unless image is present. The body text of the card.
  final pulumi.Input<String>? formattedText;
  /// Optional. The image for the card.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageImage>? image;
  /// Optional. The subtitle of the card.
  final pulumi.Input<String>? subtitle;
  /// Optional. The title of the card.
  final pulumi.Input<String>? title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageBasicCard].
  /// [buttons] Optional. The collection of card buttons.
  /// [formattedText] Required, unless image is present. The body text of the card.
  /// [image] Optional. The image for the card.
  /// [subtitle] Optional. The subtitle of the card.
  /// [title] Optional. The title of the card.
  GoogleCloudDialogflowV2beta1IntentMessageBasicCard({
    this.buttons,
    this.formattedText,
    this.image,
    this.subtitle,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buttons': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>, List<Map<String, dynamic>>>(buttons, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton, Map<String, dynamic>>(value, (value) => value.toMap())),
      'formattedText': ?formattedText,
      'image': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'subtitle': ?subtitle,
      'title': ?title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBasicCard.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBasicCard(
      buttons: map['buttons'] == null ? null : (pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>(map['buttons']!, (value) => GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton.fromMap((value as Map).cast<String, dynamic>()))).input(),
      formattedText: map['formattedText'] == null ? null : (map['formattedText']! as String).input(),
      image: map['image'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap((map['image']! as Map).cast<String, dynamic>())).input(),
      subtitle: map['subtitle'] == null ? null : (map['subtitle']! as String).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
    );
  }
}

