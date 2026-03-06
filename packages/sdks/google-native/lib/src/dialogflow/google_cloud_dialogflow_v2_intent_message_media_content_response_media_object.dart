// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_image.dart';

/// Response media object for media content card.
class GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject {
  /// Url where the media is stored.
  final pulumi.Input<String> contentUrl;
  /// Optional. Description of media card.
  final pulumi.Input<String>? description;
  /// Optional. Icon to display above media content.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageImage>? icon;
  /// Optional. Image to display above media content.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageImage>? largeImage;
  /// Name of media card.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject].
  /// [contentUrl] Url where the media is stored.
  /// [description] Optional. Description of media card.
  /// [icon] Optional. Icon to display above media content.
  /// [largeImage] Optional. Image to display above media content.
  /// [name] Name of media card.
  const GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject({
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
      'icon': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageImage, Map<String, dynamic>>(icon, (value) => value.toMap()),
      'largeImage': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2IntentMessageImage, Map<String, dynamic>>(largeImage, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(
      contentUrl: pulumi.Input.fromValue(map['contentUrl'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      icon: (() { final guardedValue = map['icon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      largeImage: (() { final guardedValue = map['largeImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageImage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

