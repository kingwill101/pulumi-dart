// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_profile_human_agent_assistant_config_human_agent_suggestion_config_feature_config_query_config_context_filter_settings.dart';
import 'conversation_profile_human_agent_assistant_config_human_agent_suggestion_config_feature_config_query_config_dialogflow_query_source.dart';
import 'conversation_profile_human_agent_assistant_config_human_agent_suggestion_config_feature_config_query_config_sections.dart';

class ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfig {
  /// Confidence threshold of query result.
  /// This feature is only supported for types: ARTICLE_SUGGESTION, FAQ, SMART_REPLY, SMART_COMPOSE, KNOWLEDGE_SEARCH, KNOWLEDGE_ASSIST, ENTITY_EXTRACTION.
  final pulumi.Input<double>? confidenceThreshold;
  /// Determines how recent conversation context is filtered when generating suggestions. If unspecified, no messages will be dropped.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigContextFilterSettings>? contextFilterSettings;
  /// Query from Dialogflow agent.
  /// This feature is supported for types: DIALOGFLOW_ASSIST.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource>? dialogflowQuerySource;
  /// Maximum number of results to return.
  final pulumi.Input<int>? maxResults;
  /// he customized sections chosen to return when requesting a summary of a conversation.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections>? sections;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfig].
  /// [confidenceThreshold] Confidence threshold of query result.
  /// [contextFilterSettings] Determines how recent conversation context is filtered when generating suggestions. If unspecified, no messages will be dropped.
  /// [dialogflowQuerySource] Query from Dialogflow agent.
  /// [maxResults] Maximum number of results to return.
  /// [sections] he customized sections chosen to return when requesting a summary of a conversation.
  ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfig({
    this.confidenceThreshold,
    this.contextFilterSettings,
    this.dialogflowQuerySource,
    this.maxResults,
    this.sections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceThreshold': ?confidenceThreshold,
      'contextFilterSettings': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigContextFilterSettings, Map<String, dynamic>>(contextFilterSettings, (value) => value.toMap()),
      'dialogflowQuerySource': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource, Map<String, dynamic>>(dialogflowQuerySource, (value) => value.toMap()),
      'maxResults': ?maxResults,
      'sections': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections, Map<String, dynamic>>(sections, (value) => value.toMap()),
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfig(
      confidenceThreshold: map['confidenceThreshold'] == null ? null : (map['confidenceThreshold'] as double).input(),
      contextFilterSettings: map['contextFilterSettings'] == null ? null : (ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigContextFilterSettings.fromMap((map['contextFilterSettings'] as Map).cast<String, dynamic>())).input(),
      dialogflowQuerySource: map['dialogflowQuerySource'] == null ? null : (ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource.fromMap((map['dialogflowQuerySource'] as Map).cast<String, dynamic>())).input(),
      maxResults: map['maxResults'] == null ? null : (map['maxResults'] as int).input(),
      sections: map['sections'] == null ? null : (ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections.fromMap((map['sections'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

