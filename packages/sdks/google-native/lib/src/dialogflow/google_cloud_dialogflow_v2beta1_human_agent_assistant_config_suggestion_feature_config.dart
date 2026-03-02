// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_conversation_model_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_conversation_process_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_query_config.dart';
import 'google_cloud_dialogflow_v2beta1_human_agent_assistant_config_suggestion_trigger_settings.dart';
import 'google_cloud_dialogflow_v2beta1_suggestion_feature.dart';

/// Config for suggestion features.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig {
  /// Configs of custom conversation model.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationModelConfig>? conversationModelConfig;
  /// Configs for processing conversation.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig>? conversationProcessConfig;
  /// Optional. Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records. Supported features: KNOWLEDGE_SEARCH.
  final pulumi.Input<bool>? disableAgentQueryLogging;
  /// Automatically iterates all participants and tries to compile suggestions. Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, ENTITY_EXTRACTION, KNOWLEDGE_ASSIST.
  final pulumi.Input<bool>? enableEventBasedSuggestion;
  /// Configs of query.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfig>? queryConfig;
  /// The suggestion feature.
  final pulumi.Input<GoogleCloudDialogflowV2beta1SuggestionFeature>? suggestionFeature;
  /// Settings of suggestion trigger. Currently, only ARTICLE_SUGGESTION, FAQ, and DIALOGFLOW_ASSIST will use this field.
  final pulumi.Input<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings>? suggestionTriggerSettings;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig].
  /// [conversationModelConfig] Configs of custom conversation model.
  /// [conversationProcessConfig] Configs for processing conversation.
  /// [disableAgentQueryLogging] Optional. Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records. Supported features: KNOWLEDGE_SEARCH.
  /// [enableEventBasedSuggestion] Automatically iterates all participants and tries to compile suggestions. Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, ENTITY_EXTRACTION, KNOWLEDGE_ASSIST.
  /// [queryConfig] Configs of query.
  /// [suggestionFeature] The suggestion feature.
  /// [suggestionTriggerSettings] Settings of suggestion trigger. Currently, only ARTICLE_SUGGESTION, FAQ, and DIALOGFLOW_ASSIST will use this field.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig({
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
      'conversationModelConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationModelConfig, Map<String, dynamic>>(conversationModelConfig, (value) => value.toMap()),
      'conversationProcessConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig, Map<String, dynamic>>(conversationProcessConfig, (value) => value.toMap()),
      'disableAgentQueryLogging': ?disableAgentQueryLogging,
      'enableEventBasedSuggestion': ?enableEventBasedSuggestion,
      'queryConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfig, Map<String, dynamic>>(queryConfig, (value) => value.toMap()),
      'suggestionFeature': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1SuggestionFeature, Map<String, dynamic>>(suggestionFeature, (value) => value.toMap()),
      'suggestionTriggerSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings, Map<String, dynamic>>(suggestionTriggerSettings, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionFeatureConfig(
      conversationModelConfig: map['conversationModelConfig'] == null ? null : (GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationModelConfig.fromMap((map['conversationModelConfig']! as Map).cast<String, dynamic>())).input(),
      conversationProcessConfig: map['conversationProcessConfig'] == null ? null : (GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigConversationProcessConfig.fromMap((map['conversationProcessConfig']! as Map).cast<String, dynamic>())).input(),
      disableAgentQueryLogging: map['disableAgentQueryLogging'] == null ? null : (map['disableAgentQueryLogging']! as bool).input(),
      enableEventBasedSuggestion: map['enableEventBasedSuggestion'] == null ? null : (map['enableEventBasedSuggestion']! as bool).input(),
      queryConfig: map['queryConfig'] == null ? null : (GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfig.fromMap((map['queryConfig']! as Map).cast<String, dynamic>())).input(),
      suggestionFeature: map['suggestionFeature'] == null ? null : (GoogleCloudDialogflowV2beta1SuggestionFeature.fromMap((map['suggestionFeature']! as Map).cast<String, dynamic>())).input(),
      suggestionTriggerSettings: map['suggestionTriggerSettings'] == null ? null : (GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettings.fromMap((map['suggestionTriggerSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

