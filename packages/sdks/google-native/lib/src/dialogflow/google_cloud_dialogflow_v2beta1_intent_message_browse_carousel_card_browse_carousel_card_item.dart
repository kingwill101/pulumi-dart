// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_browse_carousel_card_browse_carousel_card_item_open_url_action.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_image.dart';

/// Browsing carousel tile
class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem {
  /// Optional. Description of the carousel item. Maximum of four lines of text.
  final pulumi.Input<String>? description;
  /// Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.
  final pulumi.Input<String>? footer;
  /// Optional. Hero image for the carousel item.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageImage>? image;
  /// Action to present to the user.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction> openUriAction;
  /// Title of the carousel item. Maximum of two lines of text.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem].
  /// [description] Optional. Description of the carousel item. Maximum of four lines of text.
  /// [footer] Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.
  /// [image] Optional. Hero image for the carousel item.
  /// [openUriAction] Action to present to the user.
  /// [title] Title of the carousel item. Maximum of two lines of text.
  GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem({
    this.description,
    this.footer,
    this.image,
    required this.openUriAction,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'footer': ?footer,
      'image': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'openUriAction': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction, Map<String, dynamic>>(openUriAction, (value) => value.toMap()),
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      footer: map['footer'] == null ? null : (map['footer']! as String).input(),
      image: map['image'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap((map['image']! as Map).cast<String, dynamic>())).input(),
      openUriAction: (GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.fromMap((map['openUriAction'] as Map).cast<String, dynamic>())).input(),
      title: (map['title'] as String).input(),
    );
  }
}

