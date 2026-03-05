// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_browse_carousel_card_browse_carousel_card_item_open_url_action.dart';
import 'google_cloud_dialogflow_v2_intent_message_image.dart';

/// Browsing carousel tile
class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem {
  /// Optional. Description of the carousel item. Maximum of four lines of text.
  final pulumi.Input<String>? description;
  /// Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.
  final pulumi.Input<String>? footer;
  /// Optional. Hero image for the carousel item.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageImage>? image;
  /// Action to present to the user.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction> openUriAction;
  /// Title of the carousel item. Maximum of two lines of text.
  final pulumi.Input<String> title;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem].
  /// [description] Optional. Description of the carousel item. Maximum of four lines of text.
  /// [footer] Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum of one line of text.
  /// [image] Optional. Hero image for the carousel item.
  /// [openUriAction] Action to present to the user.
  /// [title] Title of the carousel item. Maximum of two lines of text.
  GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem({
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
      'image': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageImage, Map<String, dynamic>>(image, (value) => value.toMap()),
      'openUriAction': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction, Map<String, dynamic>>(openUriAction, (value) => value.toMap()),
      'title': title,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      footer: (() { final guardedValue = map['footer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openUriAction: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction.fromMap((map['openUriAction']! as Map).cast<String, dynamic>())),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

