// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_conversation_model_config.dart';
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_conversation_process_config.dart';
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_query_config.dart';
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_suggestion_feature.dart';
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_suggestion_trigger_settings.dart';

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig {
  /// Configs of custom conversation model.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationModelConfig>? conversationModelConfig;
  /// Config to process conversation.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationProcessConfig>? conversationProcessConfig;
  /// Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records.
  /// This feature is only supported for types: KNOWLEDGE_SEARCH.
  final pulumi.Input<bool>? disableAgentQueryLogging;
  /// Enable including conversation context during query answer generation.
  /// This feature is only supported for types: KNOWLEDGE_SEARCH.
  final pulumi.Input<bool>? enableConversationAugmentedQuery;
  /// Automatically iterates all participants and tries to compile suggestions.
  /// This feature is only supported for types: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST, KNOWLEDGE_ASSIST.
  final pulumi.Input<bool>? enableEventBasedSuggestion;
  /// Enable query suggestion only.
  /// This feature is only supported for types: KNOWLEDGE_ASSIST
  final pulumi.Input<bool>? enableQuerySuggestionOnly;
  /// Enable query suggestion even if we can't find its answer. By default, queries are suggested only if we find its answer.
  /// This feature is only supported for types: KNOWLEDGE_ASSIST.
  final pulumi.Input<bool>? enableQuerySuggestionWhenNoAnswer;
  /// Configs of query.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig>? queryConfig;
  /// The suggestion feature.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionFeature>? suggestionFeature;
  /// Settings of suggestion trigger.
  /// This feature is only supported for types: ARTICLE_SUGGESTION, FAQ.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionTriggerSettings>? suggestionTriggerSettings;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig].
  /// [conversationModelConfig] Configs of custom conversation model.
  /// [conversationProcessConfig] Config to process conversation.
  /// [disableAgentQueryLogging] Disable the logging of search queries sent by human agents. It can prevent those queries from being stored at answer records.
  /// [enableConversationAugmentedQuery] Enable including conversation context during query answer generation.
  /// [enableEventBasedSuggestion] Automatically iterates all participants and tries to compile suggestions.
  /// [enableQuerySuggestionOnly] Enable query suggestion only.
  /// [enableQuerySuggestionWhenNoAnswer] Enable query suggestion even if we can't find its answer. By default, queries are suggested only if we find its answer.
  /// [queryConfig] Configs of query.
  /// [suggestionFeature] The suggestion feature.
  /// [suggestionTriggerSettings] Settings of suggestion trigger.
  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig({
    this.conversationModelConfig,
    this.conversationProcessConfig,
    this.disableAgentQueryLogging,
    this.enableConversationAugmentedQuery,
    this.enableEventBasedSuggestion,
    this.enableQuerySuggestionOnly,
    this.enableQuerySuggestionWhenNoAnswer,
    this.queryConfig,
    this.suggestionFeature,
    this.suggestionTriggerSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conversationModelConfig': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationModelConfig, Map<String, dynamic>>(conversationModelConfig, (value) => value.toMap()),
      'conversationProcessConfig': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationProcessConfig, Map<String, dynamic>>(conversationProcessConfig, (value) => value.toMap()),
      'disableAgentQueryLogging': ?disableAgentQueryLogging,
      'enableConversationAugmentedQuery': ?enableConversationAugmentedQuery,
      'enableEventBasedSuggestion': ?enableEventBasedSuggestion,
      'enableQuerySuggestionOnly': ?enableQuerySuggestionOnly,
      'enableQuerySuggestionWhenNoAnswer': ?enableQuerySuggestionWhenNoAnswer,
      'queryConfig': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig, Map<String, dynamic>>(queryConfig, (value) => value.toMap()),
      'suggestionFeature': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionFeature, Map<String, dynamic>>(suggestionFeature, (value) => value.toMap()),
      'suggestionTriggerSettings': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionTriggerSettings, Map<String, dynamic>>(suggestionTriggerSettings, (value) => value.toMap()),
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfig(
      conversationModelConfig: map['conversationModelConfig'] == null ? null : (ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationModelConfig.fromMap((map['conversationModelConfig']! as Map).cast<String, dynamic>())).input(),
      conversationProcessConfig: map['conversationProcessConfig'] == null ? null : (ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigConversationProcessConfig.fromMap((map['conversationProcessConfig']! as Map).cast<String, dynamic>())).input(),
      disableAgentQueryLogging: map['disableAgentQueryLogging'] == null ? null : (map['disableAgentQueryLogging']! as bool).input(),
      enableConversationAugmentedQuery: map['enableConversationAugmentedQuery'] == null ? null : (map['enableConversationAugmentedQuery']! as bool).input(),
      enableEventBasedSuggestion: map['enableEventBasedSuggestion'] == null ? null : (map['enableEventBasedSuggestion']! as bool).input(),
      enableQuerySuggestionOnly: map['enableQuerySuggestionOnly'] == null ? null : (map['enableQuerySuggestionOnly']! as bool).input(),
      enableQuerySuggestionWhenNoAnswer: map['enableQuerySuggestionWhenNoAnswer'] == null ? null : (map['enableQuerySuggestionWhenNoAnswer']! as bool).input(),
      queryConfig: map['queryConfig'] == null ? null : (ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig.fromMap((map['queryConfig']! as Map).cast<String, dynamic>())).input(),
      suggestionFeature: map['suggestionFeature'] == null ? null : (ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionFeature.fromMap((map['suggestionFeature']! as Map).cast<String, dynamic>())).input(),
      suggestionTriggerSettings: map['suggestionTriggerSettings'] == null ? null : (ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigSuggestionTriggerSettings.fromMap((map['suggestionTriggerSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

