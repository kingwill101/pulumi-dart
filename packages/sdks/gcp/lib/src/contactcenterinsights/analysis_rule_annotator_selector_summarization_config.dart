// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalysisRuleAnnotatorSelectorSummarizationConfig {
  /// Resource name of the Dialogflow conversation profile.
  /// Format:
  /// projects/{project}/locations/{location}/conversationProfiles/{conversation_profile}
  final pulumi.Input<String>? conversationProfile;
  /// Default summarization model to be used.
  /// Possible values:
  /// SUMMARIZATION_MODEL_UNSPECIFIED
  /// BASELINE_MODEL
  /// BASELINE_MODEL_V2_0
  /// Possible values are: `BASELINE_MODEL`, `BASELINE_MODEL_V2_0`.
  final pulumi.Input<String>? summarizationModel;

  /// Creates a new [AnalysisRuleAnnotatorSelectorSummarizationConfig].
  /// [conversationProfile] Resource name of the Dialogflow conversation profile.
  /// [summarizationModel] Default summarization model to be used.
  const AnalysisRuleAnnotatorSelectorSummarizationConfig({
    this.conversationProfile,
    this.summarizationModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationProfile': ?conversationProfile,
      'summarizationModel': ?summarizationModel,
    };
  }

  factory AnalysisRuleAnnotatorSelectorSummarizationConfig.fromMap(Map<String, dynamic> map) {
    return AnalysisRuleAnnotatorSelectorSummarizationConfig(
      conversationProfile: (() { final guardedValue = map['conversationProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summarizationModel: (() { final guardedValue = map['summarizationModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
