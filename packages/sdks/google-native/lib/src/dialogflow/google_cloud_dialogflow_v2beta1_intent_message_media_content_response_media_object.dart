// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_intent_message_image.dart';

/// Response media object for media content card.
class GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject {
  /// Url where the media is stored.
  final pulumi.Input<String> contentUrl;
  /// Optional. Description of media card.
  final pulumi.Input<String>? description;
  /// Optional. Icon to display above media content.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageImage>? icon;
  /// Optional. Image to display above media content.
  final pulumi.Input<GoogleCloudDialogflowV2beta1IntentMessageImage>? largeImage;
  /// Name of media card.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject].
  /// [contentUrl] Url where the media is stored.
  /// [description] Optional. Description of media card.
  /// [icon] Optional. Icon to display above media content.
  /// [largeImage] Optional. Image to display above media content.
  /// [name] Name of media card.
  GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject({
    required this.contentUrl,
    this.description,
    this.icon,
    this.largeImage,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentUrl': contentUrl,
      'description': ?description,
      'icon': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageImage, Map<String, dynamic>>(icon, (value) => value.toMap()),
      'largeImage': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1IntentMessageImage, Map<String, dynamic>>(largeImage, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject(
      contentUrl: (map['contentUrl'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      icon: map['icon'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap((map['icon']! as Map).cast<String, dynamic>())).input(),
      largeImage: map['largeImage'] == null ? null : (GoogleCloudDialogflowV2beta1IntentMessageImage.fromMap((map['largeImage']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
    );
  }
}

