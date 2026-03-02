// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_annotator_selector_summarization_config_summarization_model.dart';

/// Configuration for summarization.
class GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig {
  /// Resource name of the Dialogflow conversation profile. Format: projects/{project}/locations/{location}/conversationProfiles/{conversation_profile}
  final pulumi.Input<String>? conversationProfile;
  /// Default summarization model to be used.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel>? summarizationModel;

  /// Creates a new [GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig].
  /// [conversationProfile] Resource name of the Dialogflow conversation profile. Format: projects/{project}/locations/{location}/conversationProfiles/{conversation_profile}
  /// [summarizationModel] Default summarization model to be used.
  GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig({
    this.conversationProfile,
    this.summarizationModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationProfile': ?conversationProfile,
      'summarizationModel': ?pulumi.Input.mapOptionalInputValue<GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel, String>(summarizationModel, (value) => value.value),
    };
  }

  factory GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig(
      conversationProfile: map['conversationProfile'] == null ? null : (map['conversationProfile'] as String).input(),
      summarizationModel: map['summarizationModel'] == null ? null : (GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel.fromValue(map['summarizationModel'] as String)).input(),
    );
  }
}

