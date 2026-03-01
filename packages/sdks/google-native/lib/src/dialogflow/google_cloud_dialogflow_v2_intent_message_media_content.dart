// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_media_content_media_type.dart';
import 'google_cloud_dialogflow_v2_intent_message_media_content_response_media_object.dart';

/// The media content card for Actions on Google.
class GoogleCloudDialogflowV2IntentMessageMediaContent {
  /// List of media objects.
  final List<GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject> mediaObjects;
  /// Optional. What type of media is the content (ie "audio").
  final GoogleCloudDialogflowV2IntentMessageMediaContentMediaType? mediaType;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageMediaContent].
  /// [mediaObjects] List of media objects.
  /// [mediaType] Optional. What type of media is the content (ie "audio").
  GoogleCloudDialogflowV2IntentMessageMediaContent({
    required this.mediaObjects,
    this.mediaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mediaObjects': pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject, Map<String, dynamic>>(mediaObjects, (value) => value.toMap()),
      'mediaType': ?mediaType == null ? null : mediaType!.value,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageMediaContent.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageMediaContent(
      mediaObjects: pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>(map['mediaObjects'], (value) => GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject.fromMap((value as Map).cast<String, dynamic>())),
      mediaType: map['mediaType'] == null ? null : GoogleCloudDialogflowV2IntentMessageMediaContentMediaType.fromValue(map['mediaType'] as String),
    );
  }
}

