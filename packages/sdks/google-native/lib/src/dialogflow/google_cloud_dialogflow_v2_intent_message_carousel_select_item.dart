// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_image.dart';
import 'google_cloud_dialogflow_v2_intent_message_select_item_info.dart';

/// An item in the carousel.
class GoogleCloudDialogflowV2IntentMessageCarouselSelectItem {
  /// Optional. The body text of the card.
  final pulumi.Input<String>? description;
  /// Optional. The image to display.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageImage>? image;
  /// Additional info about the option item.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageSelectItemInfo> info;
  /// Title of the carousel item.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageCarouselSelectItem].
  /// [description] Optional. The body text of the card.
  /// [image] Optional. The image to display.
  /// [info] Additional info about the option item.
  /// [title] Title of the carousel item.
  const GoogleCloudDialogflowV2IntentMessageCarouselSelectItem({
    this.description,
    this.image,
    required this.info,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'image': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'info': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageSelectItemInfo, Map<String, dynamic>>(info, (value) => value.toMap()),
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageCarouselSelectItem.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageCarouselSelectItem(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      info: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageSelectItemInfo.fromMap((map['info']! as Map).cast<String, dynamic>())),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

