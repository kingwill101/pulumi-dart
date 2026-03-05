// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_conversation_model_config_response.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_conversation_process_config_response.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_query_config_response.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_trigger_settings_response.dart';
import 'google_cloud_dialogflow_v2_suggestion_feature_response.dart';

/// Config for suggestion features.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfigResponse {
  /// Configs of custom conversation model.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfigResponse> conversationModelConfig;
  /// Configs for processing conversation.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse> conversationProcessConfig;
  /// Optional. Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records. Supported features: KNOWLEDGE_SEARCH.
  final pulumi.Input<bool> disableAgentQueryLogging;
  /// Automatically iterates all participants and tries to compile suggestions. Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, KNOWLEDGE_ASSIST.
  final pulumi.Input<bool> enableEventBasedSuggestion;
  /// Configs of query.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigResponse> queryConfig;
  /// The suggestion feature.
  final pulumi.Input<GoogleCloudDialogflowV2SuggestionFeatureResponse> suggestionFeature;
  /// Settings of suggestion trigger. Currently, only ARTICLE_SUGGESTION and FAQ will use this field.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse> suggestionTriggerSettings;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfigResponse].
  /// [conversationModelConfig] Configs of custom conversation model.
  /// [conversationProcessConfig] Configs for processing conversation.
  /// [disableAgentQueryLogging] Optional. Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records. Supported features: KNOWLEDGE_SEARCH.
  /// [enableEventBasedSuggestion] Automatically iterates all participants and tries to compile suggestions. Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, KNOWLEDGE_ASSIST.
  /// [queryConfig] Configs of query.
  /// [suggestionFeature] The suggestion feature.
  /// [suggestionTriggerSettings] Settings of suggestion trigger. Currently, only ARTICLE_SUGGESTION and FAQ will use this field.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfigResponse({
    required this.conversationModelConfig,
    required this.conversationProcessConfig,
    required this.disableAgentQueryLogging,
    required this.enableEventBasedSuggestion,
    required this.queryConfig,
    required this.suggestionFeature,
    required this.suggestionTriggerSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationModelConfig': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfigResponse, Map<String, dynamic>>(conversationModelConfig, (value) => value.toMap()),
      'conversationProcessConfig': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse, Map<String, dynamic>>(conversationProcessConfig, (value) => value.toMap()),
      'disableAgentQueryLogging': disableAgentQueryLogging,
      'enableEventBasedSuggestion': enableEventBasedSuggestion,
      'queryConfig': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigResponse, Map<String, dynamic>>(queryConfig, (value) => value.toMap()),
      'suggestionFeature': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2SuggestionFeatureResponse, Map<String, dynamic>>(suggestionFeature, (value) => value.toMap()),
      'suggestionTriggerSettings': pulumi.Input.mapInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse, Map<String, dynamic>>(suggestionTriggerSettings, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfigResponse(
      conversationModelConfig: pulumi.Input.fromValue(GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfigResponse.fromMap((map['conversationModelConfig']! as Map).cast<String, dynamic>())),
      conversationProcessConfig: pulumi.Input.fromValue(GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfigResponse.fromMap((map['conversationProcessConfig']! as Map).cast<String, dynamic>())),
      disableAgentQueryLogging: pulumi.Input.fromValue(map['disableAgentQueryLogging'] as bool),
      enableEventBasedSuggestion: pulumi.Input.fromValue(map['enableEventBasedSuggestion'] as bool),
      queryConfig: pulumi.Input.fromValue(GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigResponse.fromMap((map['queryConfig']! as Map).cast<String, dynamic>())),
      suggestionFeature: pulumi.Input.fromValue(GoogleCloudDialogflowV2SuggestionFeatureResponse.fromMap((map['suggestionFeature']! as Map).cast<String, dynamic>())),
      suggestionTriggerSettings: pulumi.Input.fromValue(GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse.fromMap((map['suggestionTriggerSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

