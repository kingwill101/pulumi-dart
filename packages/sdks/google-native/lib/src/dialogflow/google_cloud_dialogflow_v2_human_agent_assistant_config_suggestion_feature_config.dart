// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_conversation_model_config.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_conversation_process_config.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_query_config.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_trigger_settings.dart';
import 'google_cloud_dialogflow_v2_suggestion_feature.dart';

/// Config for suggestion features.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig {
  /// Configs of custom conversation model.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig>? conversationModelConfig;
  /// Configs for processing conversation.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig>? conversationProcessConfig;
  /// Optional. Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records. Supported features: KNOWLEDGE_SEARCH.
  final pulumi.Input<bool>? disableAgentQueryLogging;
  /// Automatically iterates all participants and tries to compile suggestions. Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, KNOWLEDGE_ASSIST.
  final pulumi.Input<bool>? enableEventBasedSuggestion;
  /// Configs of query.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig>? queryConfig;
  /// The suggestion feature.
  final pulumi.Input<GoogleCloudDialogflowV2SuggestionFeature>? suggestionFeature;
  /// Settings of suggestion trigger. Currently, only ARTICLE_SUGGESTION and FAQ will use this field.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings>? suggestionTriggerSettings;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig].
  /// [conversationModelConfig] Configs of custom conversation model.
  /// [conversationProcessConfig] Configs for processing conversation.
  /// [disableAgentQueryLogging] Optional. Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records. Supported features: KNOWLEDGE_SEARCH.
  /// [enableEventBasedSuggestion] Automatically iterates all participants and tries to compile suggestions. Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, KNOWLEDGE_ASSIST.
  /// [queryConfig] Configs of query.
  /// [suggestionFeature] The suggestion feature.
  /// [suggestionTriggerSettings] Settings of suggestion trigger. Currently, only ARTICLE_SUGGESTION and FAQ will use this field.
  const GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig({
    this.conversationModelConfig,
    this.conversationProcessConfig,
    this.disableAgentQueryLogging,
    this.enableEventBasedSuggestion,
    this.queryConfig,
    this.suggestionFeature,
    this.suggestionTriggerSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationModelConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig, Map<String, dynamic>>(conversationModelConfig, (value) => value.toMap()),
      'conversationProcessConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig, Map<String, dynamic>>(conversationProcessConfig, (value) => value.toMap()),
      'disableAgentQueryLogging': ?disableAgentQueryLogging,
      'enableEventBasedSuggestion': ?enableEventBasedSuggestion,
      'queryConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig, Map<String, dynamic>>(queryConfig, (value) => value.toMap()),
      'suggestionFeature': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2SuggestionFeature, Map<String, dynamic>>(suggestionFeature, (value) => value.toMap()),
      'suggestionTriggerSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings, Map<String, dynamic>>(suggestionTriggerSettings, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig(
      conversationModelConfig: (() { final guardedValue = map['conversationModelConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conversationProcessConfig: (() { final guardedValue = map['conversationProcessConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableAgentQueryLogging: (() { final guardedValue = map['disableAgentQueryLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableEventBasedSuggestion: (() { final guardedValue = map['enableEventBasedSuggestion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      queryConfig: (() { final guardedValue = map['queryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      suggestionFeature: (() { final guardedValue = map['suggestionFeature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2SuggestionFeature.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      suggestionTriggerSettings: (() { final guardedValue = map['suggestionTriggerSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

