// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_query_config_context_filter_settings.dart';
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_query_config_dialogflow_query_source.dart';
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_query_config_document_query_source.dart';
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_query_config_knowledge_base_query_source.dart';
import 'conversation_profile_human_agent_assistant_config_end_user_suggestion_config_feature_config_query_config_sections.dart';

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig {
  /// Confidence threshold of query result.
  /// This feature is only supported for types: ARTICLE_SUGGESTION, FAQ, SMART_REPLY, SMART_COMPOSE, KNOWLEDGE_SEARCH, KNOWLEDGE_ASSIST, ENTITY_EXTRACTION.
  final pulumi.Input<double>? confidenceThreshold;
  /// Determines how recent conversation context is filtered when generating suggestions. If unspecified, no messages will be dropped.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings>? contextFilterSettings;
  /// Query from Dialogflow agent.
  /// This feature is supported for types: DIALOGFLOW_ASSIST.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource>? dialogflowQuerySource;
  /// Query from knowledge base document.
  /// This feature is supported for types: SMART_REPLY, SMART_COMPOSE.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDocumentQuerySource>? documentQuerySource;
  /// Query from knowledgebase.
  /// This feature is only supported for types: ARTICLE_SUGGESTION, FAQ.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource>? knowledgeBaseQuerySource;
  /// Maximum number of results to return.
  final pulumi.Input<int>? maxResults;
  /// he customized sections chosen to return when requesting a summary of a conversation.
  /// Structure is documented below.
  final pulumi.Input<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigSections>? sections;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig].
  /// [confidenceThreshold] Confidence threshold of query result.
  /// [contextFilterSettings] Determines how recent conversation context is filtered when generating suggestions. If unspecified, no messages will be dropped.
  /// [dialogflowQuerySource] Query from Dialogflow agent.
  /// [documentQuerySource] Query from knowledge base document.
  /// [knowledgeBaseQuerySource] Query from knowledgebase.
  /// [maxResults] Maximum number of results to return.
  /// [sections] he customized sections chosen to return when requesting a summary of a conversation.
  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig({
    this.confidenceThreshold,
    this.contextFilterSettings,
    this.dialogflowQuerySource,
    this.documentQuerySource,
    this.knowledgeBaseQuerySource,
    this.maxResults,
    this.sections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceThreshold': ?confidenceThreshold,
      'contextFilterSettings': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings, Map<String, dynamic>>(contextFilterSettings, (value) => value.toMap()),
      'dialogflowQuerySource': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource, Map<String, dynamic>>(dialogflowQuerySource, (value) => value.toMap()),
      'documentQuerySource': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDocumentQuerySource, Map<String, dynamic>>(documentQuerySource, (value) => value.toMap()),
      'knowledgeBaseQuerySource': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource, Map<String, dynamic>>(knowledgeBaseQuerySource, (value) => value.toMap()),
      'maxResults': ?maxResults,
      'sections': ?pulumi.Input.mapOptionalInputValue<ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigSections, Map<String, dynamic>>(sections, (value) => value.toMap()),
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfig(
      confidenceThreshold: (() { final guardedValue = map['confidenceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      contextFilterSettings: (() { final guardedValue = map['contextFilterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dialogflowQuerySource: (() { final guardedValue = map['dialogflowQuerySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      documentQuerySource: (() { final guardedValue = map['documentQuerySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDocumentQuerySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      knowledgeBaseQuerySource: (() { final guardedValue = map['knowledgeBaseQuerySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxResults: (() { final guardedValue = map['maxResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sections: (() { final guardedValue = map['sections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigSections.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

