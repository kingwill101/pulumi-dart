// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_datasource_references.dart';
import 'data_analytics_data_agent_data_analytics_agent_published_context_example_query.dart';
import 'data_analytics_data_agent_data_analytics_agent_published_context_glossary_term.dart';
import 'data_analytics_data_agent_data_analytics_agent_published_context_looker_golden_query.dart';
import 'data_analytics_data_agent_data_analytics_agent_published_context_options.dart';
import 'data_analytics_data_agent_data_analytics_agent_published_context_schema_relationship.dart';
import 'data_analytics_data_agent_data_analytics_agent_published_context_user_functions.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContext {
  /// Required. Data sources that are available for answering questions.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences> datasourceReferences;
  /// Optional. A list of example queries for BigQuery data sources.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery>?>? exampleQueries;
  /// Optional. Term definitions for the agent's domain.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextGlossaryTerm>?>? glossaryTerms;
  /// Optional. A list of golden queries for Looker data sources.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQuery>?>? lookerGoldenQueries;
  /// Optional. Additional options for the conversation.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptions?>? options;
  /// Optional. Relationships between table schemas, including referencing
  /// and referenced columns.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationship>?>? schemaRelationships;
  /// Optional. The basic entry point for data owners creating domain
  /// knowledge for the agent.
  final pulumi.Input<String?>? systemInstruction;
  /// Optional. A collection of user functions to be included in context.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctions?>? userFunctions;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContext].
  /// [datasourceReferences] Required. Data sources that are available for answering questions.
  /// [exampleQueries] Optional. A list of example queries for BigQuery data sources.
  /// [glossaryTerms] Optional. Term definitions for the agent's domain.
  /// [lookerGoldenQueries] Optional. A list of golden queries for Looker data sources.
  /// [options] Optional. Additional options for the conversation.
  /// [schemaRelationships] Optional. Relationships between table schemas, including referencing
  /// [systemInstruction] Optional. The basic entry point for data owners creating domain
  /// [userFunctions] Optional. A collection of user functions to be included in context.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContext({
    required this.datasourceReferences,
    this.exampleQueries,
    this.glossaryTerms,
    this.lookerGoldenQueries,
    this.options,
    this.schemaRelationships,
    this.systemInstruction,
    this.userFunctions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasourceReferences': pulumi.Input.mapInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences, Map<String, dynamic>>(datasourceReferences, (value) => value.toMap()),
      'exampleQueries': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery>, List<Map<String, dynamic>>>(exampleQueries, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'glossaryTerms': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextGlossaryTerm>, List<Map<String, dynamic>>>(glossaryTerms, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextGlossaryTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lookerGoldenQueries': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQuery>, List<Map<String, dynamic>>>(lookerGoldenQueries, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'options': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'schemaRelationships': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationship>, List<Map<String, dynamic>>>(schemaRelationships, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationship, Map<String, dynamic>>(value, (value) => value.toMap())),
      'systemInstruction': ?systemInstruction,
      'userFunctions': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctions, Map<String, dynamic>>(userFunctions, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContext.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContext(
      datasourceReferences: pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences.fromMap((map['datasourceReferences']! as Map).cast<String, dynamic>())),
      exampleQueries: (() { final guardedValue = map['exampleQueries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery.fromMap((value as Map).cast<String, dynamic>()))); })(),
      glossaryTerms: (() { final guardedValue = map['glossaryTerms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextGlossaryTerm>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextGlossaryTerm.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lookerGoldenQueries: (() { final guardedValue = map['lookerGoldenQueries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQuery>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQuery.fromMap((value as Map).cast<String, dynamic>()))); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schemaRelationships: (() { final guardedValue = map['schemaRelationships']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationship>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationship.fromMap((value as Map).cast<String, dynamic>()))); })(),
      systemInstruction: (() { final guardedValue = map['systemInstruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userFunctions: (() { final guardedValue = map['userFunctions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextUserFunctions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
