// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for summarization.
class GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse {
  /// Resource name of the Dialogflow conversation profile. Format: projects/{project}/locations/{location}/conversationProfiles/{conversation_profile}
  final pulumi.Input<String> conversationProfile;
  /// Default summarization model to be used.
  final pulumi.Input<String> summarizationModel;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse].
  /// [conversationProfile] Resource name of the Dialogflow conversation profile. Format: projects/{project}/locations/{location}/conversationProfiles/{conversation_profile}
  /// [summarizationModel] Default summarization model to be used.
  const GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse({
    required this.conversationProfile,
    required this.summarizationModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationProfile': conversationProfile,
      'summarizationModel': summarizationModel,
    };
  }

  factory GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigResponse(
      conversationProfile: pulumi.Input.fromValue(map['conversationProfile'] as String),
      summarizationModel: pulumi.Input.fromValue(map['summarizationModel'] as String),
    );
  }
}
