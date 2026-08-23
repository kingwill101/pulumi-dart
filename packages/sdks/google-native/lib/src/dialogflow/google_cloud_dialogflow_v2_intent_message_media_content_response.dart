// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_intent_message_media_content_response_media_object_response.dart';

/// The media content card for Actions on Google.
class GoogleCloudDialogflowV2IntentMessageMediaContentResponse {
  /// List of media objects.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObjectResponse>> mediaObjects;
  /// Optional. What type of media is the content (ie "audio").
  final pulumi.Input<String> mediaType;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageMediaContentResponse].
  /// [mediaObjects] List of media objects.
  /// [mediaType] Optional. What type of media is the content (ie "audio").
  const GoogleCloudDialogflowV2IntentMessageMediaContentResponse({
    required this.mediaObjects,
    required this.mediaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mediaObjects': pulumi.Input.mapInputValue<List<GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObjectResponse>, List<Map<String, dynamic>>>(mediaObjects, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObjectResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mediaType': mediaType,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageMediaContentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageMediaContentResponse(
      mediaObjects: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObjectResponse>(map['mediaObjects']!, (value) => GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObjectResponse.fromMap((value as Map).cast<String, dynamic>()))),
      mediaType: pulumi.Input.fromValue(map['mediaType'] as String),
    );
  }
}
