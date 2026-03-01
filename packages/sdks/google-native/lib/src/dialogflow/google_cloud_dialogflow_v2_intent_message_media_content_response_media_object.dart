// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_intent_message_image.dart';

/// Response media object for media content card.
class GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject {
  /// Url where the media is stored.
  final String contentUrl;
  /// Optional. Description of media card.
  final String? description;
  /// Optional. Icon to display above media content.
  final GoogleCloudDialogflowV2IntentMessageImage? icon;
  /// Optional. Image to display above media content.
  final GoogleCloudDialogflowV2IntentMessageImage? largeImage;
  /// Name of media card.
  final String name;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject].
  /// [contentUrl] Url where the media is stored.
  /// [description] Optional. Description of media card.
  /// [icon] Optional. Icon to display above media content.
  /// [largeImage] Optional. Image to display above media content.
  /// [name] Name of media card.
  GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject({
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
      'icon': ?icon == null ? null : icon!.toMap(),
      'largeImage': ?largeImage == null ? null : largeImage!.toMap(),
      'name': name,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject(
      contentUrl: map['contentUrl'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      icon: map['icon'] == null ? null : GoogleCloudDialogflowV2IntentMessageImage.fromMap((map['icon'] as Map).cast<String, dynamic>()),
      largeImage: map['largeImage'] == null ? null : GoogleCloudDialogflowV2IntentMessageImage.fromMap((map['largeImage'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

