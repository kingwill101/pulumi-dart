// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_image.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_select_item_info.dart';

/// An item in the list.
class GoogleCloudDialogflowV2beta1IntentMessageListSelectItem {
  /// Optional. The main text describing the item.
  final pulumi.Input<String>? description;
  /// Optional. The image to display.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageImage>? image;
  /// Additional information about this option.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo> info;
  /// The title of the list item.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageListSelectItem].
  /// [description] Optional. The main text describing the item.
  /// [image] Optional. The image to display.
  /// [info] Additional information about this option.
  /// [title] The title of the list item.
  GoogleCloudDialogflowV2beta1IntentMessageListSelectItem({
    this.description,
    this.image,
    required this.info,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'image': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'info': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo, Map<String, dynamic>>(info, (value) => value.toMap()),
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageListSelectItem.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageListSelectItem(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      image: map['image'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap((map['image']! as Map).cast<String, dynamic>())).input(),
      info: (GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo.fromMap((map['info'] as Map).cast<String, dynamic>())).input(),
      title: (map['title'] as String).input(),
    );
  }
}

