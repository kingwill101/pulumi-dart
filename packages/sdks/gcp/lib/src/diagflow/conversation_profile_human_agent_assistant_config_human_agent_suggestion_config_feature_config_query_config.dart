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
  const ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfig({
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
      confidenceThreshold: (() { final guardedValue = map['confidenceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      contextFilterSettings: (() { final guardedValue = map['contextFilterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigContextFilterSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dialogflowQuerySource: (() { final guardedValue = map['dialogflowQuerySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxResults: (() { final guardedValue = map['maxResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sections: (() { final guardedValue = map['sections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

