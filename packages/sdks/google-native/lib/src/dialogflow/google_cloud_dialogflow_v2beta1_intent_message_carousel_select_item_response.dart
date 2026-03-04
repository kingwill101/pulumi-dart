// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_image_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_select_item_info_response.dart';

/// An item in the carousel.
class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse {
  /// Optional. The body text of the card.
  final pulumi.Input<String> description;

  /// Optional. The image to display.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageImageResponse>
  image;

  /// Additional info about the option item.
  final pulumi.Input<
    GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfoResponse
  >
  info;

  /// Title of the carousel item.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse].
  /// [description] Optional. The body text of the card.
  /// [image] Optional. The image to display.
  /// [info] Additional info about the option item.
  /// [title] Title of the carousel item.
  GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse({
    required this.description,
    required this.image,
    required this.info,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'image':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowV2beta1IntentMessageImageResponse,
            Map<String, dynamic>
          >(image, (value) => value.toMap()),
      'info':
          pulumi.Input.mapInputValue<
            GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfoResponse,
            Map<String, dynamic>
          >(info, (value) => value.toMap()),
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItemResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      image: pulumi.Input.fromValue(
        GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap(
          (map['image']! as Map).cast<String, dynamic>(),
        ),
      ),
      info: pulumi.Input.fromValue(
        GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfoResponse.fromMap(
          (map['info']! as Map).cast<String, dynamic>(),
        ),
      ),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
