// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_browse_carousel_card_browse_carousel_card_item_open_url_action_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image_response.dart';

/// Browsing carousel tile
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse {
  /// Optional. Description of the carousel item. Maximum of four lines of text.
  final pulumi.Input<String> description;
  /// Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.
  final pulumi.Input<String> footer;
  /// Optional. Hero image for the carousel item.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageImageResponse> image;
  /// Action to present to the user.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse> openUriAction;
  /// Title of the carousel item. Maximum of two lines of text.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse].
  /// [description] Optional. Description of the carousel item. Maximum of four lines of text.
  /// [footer] Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.
  /// [image] Optional. Hero image for the carousel item.
  /// [openUriAction] Action to present to the user.
  /// [title] Title of the carousel item. Maximum of two lines of text.
  const GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse({
    required this.description,
    required this.footer,
    required this.image,
    required this.openUriAction,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'footer': footer,
      'image': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageImageResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
      'openUriAction': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse, Map<String, dynamic>>(openUriAction, (value) => value.toMap()),
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      footer: pulumi.Input.fromValue(map['footer'] as String),
      image: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageImageResponse.fromMap((map['image']! as Map).cast<String, dynamic>())),
      openUriAction: pulumi.Input.fromValue(GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionResponse.fromMap((map['openUriAction']! as Map).cast<String, dynamic>())),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
