// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_feature_config.dart';

/// Detail human agent assistant config.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig {
  /// Configuration of different suggestion features. One feature can have only one config.
  final pulumi.Input<List<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig>>? featureConfigs;
  /// If `group_suggestion_responses` is false, and there are multiple `feature_configs` in `event based suggestion` or StreamingAnalyzeContent, we will try to deliver suggestions to customers as soon as we get new suggestion. Different type of suggestions based on the same context will be in separate Pub/Sub event or `StreamingAnalyzeContentResponse`. If `group_suggestion_responses` set to true. All the suggestions to the same participant based on the same context will be grouped into a single Pub/Sub event or StreamingAnalyzeContentResponse.
  final pulumi.Input<bool>? groupSuggestionResponses;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig].
  /// [featureConfigs] Configuration of different suggestion features. One feature can have only one config.
  /// [groupSuggestionResponses] If `group_suggestion_responses` is false, and there are multiple `feature_configs` in `event based suggestion` or StreamingAnalyzeContent, we will try to deliver suggestions to customers as soon as we get new suggestion. Different type of suggestions based on the same context will be in separate Pub/Sub event or `StreamingAnalyzeContentResponse`. If `group_suggestion_responses` set to true. All the suggestions to the same participant based on the same context will be grouped into a single Pub/Sub event or StreamingAnalyzeContentResponse.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig({
    this.featureConfigs,
    this.groupSuggestionResponses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureConfigs': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig>, List<Map<String, dynamic>>>(featureConfigs, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupSuggestionResponses': ?groupSuggestionResponses,
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig(
      featureConfigs: (() { final guardedValue = map['featureConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig>(guardedValue, (value) => GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      groupSuggestionResponses: (() { final guardedValue = map['groupSuggestionResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

