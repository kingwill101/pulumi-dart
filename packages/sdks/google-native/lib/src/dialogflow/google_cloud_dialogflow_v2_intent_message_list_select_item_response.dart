// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_image_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_select_item_info_response.dart';

/// An item in the list.
class GoogleCloudDialogflowV2IntentMessageListSelectItemResponse {
  /// Optional. The main text describing the item.
  final pulumi.Input<String> description;
  /// Optional. The image to display.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageImageResponse> image;
  /// Additional information about this option.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageSelectItemInfoResponse> info;
  /// The title of the list item.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageListSelectItemResponse].
  /// [description] Optional. The main text describing the item.
  /// [image] Optional. The image to display.
  /// [info] Additional information about this option.
  /// [title] The title of the list item.
  const GoogleCloudDialogflowV2IntentMessageListSelectItemResponse({
    required this.description,
    required this.image,
    required this.info,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'image': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageImageResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
      'info': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageSelectItemInfoResponse, Map<String, dynamic>>(info, (value) => value.toMap()),
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageListSelectItemResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageListSelectItemResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      image: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageImageResponse.fromMap((map['image']! as Map).cast<String, dynamic>())),
      info: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageSelectItemInfoResponse.fromMap((map['info']! as Map).cast<String, dynamic>())),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

