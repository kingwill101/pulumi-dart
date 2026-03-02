// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_query_config_context_filter_settings.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_query_config_dialogflow_query_source.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_query_config_document_query_source.dart';
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_query_config_knowledge_base_query_source.dart';

/// Config for suggestion query.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig {
  /// Confidence threshold of query result. Agent Assist gives each suggestion a score in the range [0.0, 1.0], based on the relevance between the suggestion and the current conversation context. A score of 0.0 has no relevance, while a score of 1.0 has high relevance. Only suggestions with a score greater than or equal to the value of this field are included in the results. For a baseline model (the default), the recommended value is in the range [0.05, 0.1]. For a custom model, there is no recommended value. Tune this value by starting from a very low value and slowly increasing until you have desired results. If this field is not set, it defaults to 0.0, which means that all suggestions are returned. Supported features: ARTICLE_SUGGESTION, FAQ, SMART_REPLY, SMART_COMPOSE, KNOWLEDGE_SEARCH, KNOWLEDGE_ASSIST, ENTITY_EXTRACTION.
  final pulumi.Input<double>? confidenceThreshold;
  /// Determines how recent conversation context is filtered when generating suggestions. If unspecified, no messages will be dropped.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings>? contextFilterSettings;
  /// Query from Dialogflow agent. It is used by DIALOGFLOW_ASSIST.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource>? dialogflowQuerySource;
  /// Query from knowledge base document. It is used by: SMART_REPLY, SMART_COMPOSE.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource>? documentQuerySource;
  /// Query from knowledgebase. It is used by: ARTICLE_SUGGESTION, FAQ.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource>? knowledgeBaseQuerySource;
  /// Maximum number of results to return. Currently, if unset, defaults to 10. And the max number is 20.
  final pulumi.Input<int>? maxResults;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig].
  /// [confidenceThreshold] Confidence threshold of query result. Agent Assist gives each suggestion a score in the range [0.0, 1.0], based on the relevance between the suggestion and the current conversation context. A score of 0.0 has no relevance, while a score of 1.0 has high relevance. Only suggestions with a score greater than or equal to the value of this field are included in the results. For a baseline model (the default), the recommended value is in the range [0.05, 0.1]. For a custom model, there is no recommended value. Tune this value by starting from a very low value and slowly increasing until you have desired results. If this field is not set, it defaults to 0.0, which means that all suggestions are returned. Supported features: ARTICLE_SUGGESTION, FAQ, SMART_REPLY, SMART_COMPOSE, KNOWLEDGE_SEARCH, KNOWLEDGE_ASSIST, ENTITY_EXTRACTION.
  /// [contextFilterSettings] Determines how recent conversation context is filtered when generating suggestions. If unspecified, no messages will be dropped.
  /// [dialogflowQuerySource] Query from Dialogflow agent. It is used by DIALOGFLOW_ASSIST.
  /// [documentQuerySource] Query from knowledge base document. It is used by: SMART_REPLY, SMART_COMPOSE.
  /// [knowledgeBaseQuerySource] Query from knowledgebase. It is used by: ARTICLE_SUGGESTION, FAQ.
  /// [maxResults] Maximum number of results to return. Currently, if unset, defaults to 10. And the max number is 20.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig({
    this.confidenceThreshold,
    this.contextFilterSettings,
    this.dialogflowQuerySource,
    this.documentQuerySource,
    this.knowledgeBaseQuerySource,
    this.maxResults,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceThreshold': ?confidenceThreshold,
      'contextFilterSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings, Map<String, dynamic>>(contextFilterSettings, (value) => value.toMap()),
      'dialogflowQuerySource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource, Map<String, dynamic>>(dialogflowQuerySource, (value) => value.toMap()),
      'documentQuerySource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource, Map<String, dynamic>>(documentQuerySource, (value) => value.toMap()),
      'knowledgeBaseQuerySource': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource, Map<String, dynamic>>(knowledgeBaseQuerySource, (value) => value.toMap()),
      'maxResults': ?maxResults,
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig(
      confidenceThreshold: map['confidenceThreshold'] == null ? null : (map['confidenceThreshold']! as double).input(),
      contextFilterSettings: map['contextFilterSettings'] == null ? null : (GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings.fromMap((map['contextFilterSettings']! as Map).cast<String, dynamic>())).input(),
      dialogflowQuerySource: map['dialogflowQuerySource'] == null ? null : (GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource.fromMap((map['dialogflowQuerySource']! as Map).cast<String, dynamic>())).input(),
      documentQuerySource: map['documentQuerySource'] == null ? null : (GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource.fromMap((map['documentQuerySource']! as Map).cast<String, dynamic>())).input(),
      knowledgeBaseQuerySource: map['knowledgeBaseQuerySource'] == null ? null : (GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource.fromMap((map['knowledgeBaseQuerySource']! as Map).cast<String, dynamic>())).input(),
      maxResults: map['maxResults'] == null ? null : (map['maxResults']! as int).input(),
    );
  }
}

