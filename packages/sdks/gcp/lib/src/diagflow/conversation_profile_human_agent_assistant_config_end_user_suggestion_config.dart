// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config.dart';

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig {
  /// When disableHighLatencyFeaturesSyncDelivery is true and using the AnalyzeContent API, we will not deliver the responses from high latency features in the API response. The humanAgentAssistantConfig.notification_config must be configured and enableEventBasedSuggestion must be set to true to receive the responses from high latency features in Pub/Sub. High latency feature(s): KNOWLEDGE_ASSIST
  final pulumi.Input<bool>? disableHighLatencyFeaturesSyncDelivery;
  /// Configuration of different suggestion features. One feature can have only one config.
  /// Structure is documented below.
  final pulumi.Input<List<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig>>? featureConfigs;
  /// List of various generator resource names used in the conversation profile.
  final pulumi.Input<List<String>>? generators;
  /// If groupSuggestionResponses is false, and there are multiple featureConfigs in event based suggestion or StreamingAnalyzeContent, we will try to deliver suggestions to customers as soon as we get new suggestion. Different type of suggestions based on the same context will be in separate Pub/Sub event or StreamingAnalyzeContentResponse.
  /// If groupSuggestionResponses set to true. All the suggestions to the same participant based on the same context will be grouped into a single Pub/Sub event or StreamingAnalyzeContentResponse.
  final pulumi.Input<bool>? groupSuggestionResponses;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig].
  /// [disableHighLatencyFeaturesSyncDelivery] When disableHighLatencyFeaturesSyncDelivery is true and using the AnalyzeContent API, we will not deliver the responses from high latency features in the API response. The humanAgentAssistantConfig.notification_config must be configured and enableEventBasedSuggestion must be set to true to receive the responses from high latency features in Pub/Sub. High latency feature(s): KNOWLEDGE_ASSIST
  /// [featureConfigs] Configuration of different suggestion features. One feature can have only one config.
  /// [generators] List of various generator resource names used in the conversation profile.
  /// [groupSuggestionResponses] If groupSuggestionResponses is false, and there are multiple featureConfigs in event based suggestion or StreamingAnalyzeContent, we will try to deliver suggestions to customers as soon as we get new suggestion. Different type of suggestions based on the same context will be in separate Pub/Sub event or StreamingAnalyzeContentResponse.
  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig({
    this.disableHighLatencyFeaturesSyncDelivery,
    this.featureConfigs,
    this.generators,
    this.groupSuggestionResponses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableHighLatencyFeaturesSyncDelivery': ?disableHighLatencyFeaturesSyncDelivery,
      'featureConfigs': ?pulumi.Input.mapOptionalInputValue<List<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig>, List<Map<String, dynamic>>>(featureConfigs, (value) => pulumi.Input.encodeList<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'generators': ?generators,
      'groupSuggestionResponses': ?groupSuggestionResponses,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfig(
      disableHighLatencyFeaturesSyncDelivery: map['disableHighLatencyFeaturesSyncDelivery'] == null ? null : (map['disableHighLatencyFeaturesSyncDelivery'] as bool).input(),
      featureConfigs: map['featureConfigs'] == null ? null : (pulumi.Input.decodeList<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig>(map['featureConfigs'], (value) => ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      generators: map['generators'] == null ? null : ((map['generators'] as List).cast<String>()).input(),
      groupSuggestionResponses: map['groupSuggestionResponses'] == null ? null : (map['groupSuggestionResponses'] as bool).input(),
    );
  }
}

