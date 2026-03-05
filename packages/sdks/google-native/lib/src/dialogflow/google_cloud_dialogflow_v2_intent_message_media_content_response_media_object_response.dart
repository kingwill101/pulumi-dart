// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_image_response.dart';

/// Response media object for media content card.
class GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObjectResponse {
  /// Url where the media is stored.
  final pulumi.Input<String> contentUrl;
  /// Optional. Description of media card.
  final pulumi.Input<String> description;
  /// Optional. Icon to display above media content.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageImageResponse> icon;
  /// Optional. Image to display above media content.
  final pulumi.Input<GoogleCloudDialogflowV2IntentMessageImageResponse> largeImage;
  /// Name of media card.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObjectResponse].
  /// [contentUrl] Url where the media is stored.
  /// [description] Optional. Description of media card.
  /// [icon] Optional. Icon to display above media content.
  /// [largeImage] Optional. Image to display above media content.
  /// [name] Name of media card.
  GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObjectResponse({
    required this.contentUrl,
    required this.description,
    required this.icon,
    required this.largeImage,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentUrl': contentUrl,
      'description': description,
      'icon': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageImageResponse, Map<String, dynamic>>(icon, (value) => value.toMap()),
      'largeImage': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2IntentMessageImageResponse, Map<String, dynamic>>(largeImage, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObjectResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObjectResponse(
      contentUrl: pulumi.Input.fromValue(map['contentUrl'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      icon: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageImageResponse.fromMap((map['icon']! as Map).cast<String, dynamic>())),
      largeImage: pulumi.Input.fromValue(GoogleCloudDialogflowV2IntentMessageImageResponse.fromMap((map['largeImage']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

