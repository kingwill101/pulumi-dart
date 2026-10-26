// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references.dart';
import 'data_analytics_data_agent_data_analytics_agent_staging_context_example_query.dart';
import 'data_analytics_data_agent_data_analytics_agent_staging_context_glossary_term.dart';
import 'data_analytics_data_agent_data_analytics_agent_staging_context_options.dart';
import 'data_analytics_data_agent_data_analytics_agent_staging_context_schema_relationship.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContext {
  /// Required. Data sources that are available for answering questions.
  /// This Terraform resource currently supports BigQuery table references.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences> datasourceReferences;
  /// Optional. A list of example queries for BigQuery data sources.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQuery>?>? exampleQueries;
  /// Optional. Term definitions for the agent's domain.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextGlossaryTerm>?>? glossaryTerms;
  /// Optional. Additional options for the conversation.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptions?>? options;
  /// Optional. Relationships between table schemas, including referencing
  /// and referenced columns.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationship>?>? schemaRelationships;
  /// Optional. The basic entry point for data owners creating domain
  /// knowledge for the agent.
  final pulumi.Input<String?>? systemInstruction;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContext].
  /// [datasourceReferences] Required. Data sources that are available for answering questions.
  /// [exampleQueries] Optional. A list of example queries for BigQuery data sources.
  /// [glossaryTerms] Optional. Term definitions for the agent's domain.
  /// [options] Optional. Additional options for the conversation.
  /// [schemaRelationships] Optional. Relationships between table schemas, including referencing
  /// [systemInstruction] Optional. The basic entry point for data owners creating domain
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContext({
    required this.datasourceReferences,
    this.exampleQueries,
    this.glossaryTerms,
    this.options,
    this.schemaRelationships,
    this.systemInstruction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasourceReferences': pulumi.Input.mapInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences, Map<String, dynamic>>(datasourceReferences, (value) => value.toMap()),
      'exampleQueries': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQuery>, List<Map<String, dynamic>>>(exampleQueries, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'glossaryTerms': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextGlossaryTerm>, List<Map<String, dynamic>>>(glossaryTerms, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextGlossaryTerm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'options': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'schemaRelationships': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationship>, List<Map<String, dynamic>>>(schemaRelationships, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationship, Map<String, dynamic>>(value, (value) => value.toMap())),
      'systemInstruction': ?systemInstruction,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContext.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContext(
      datasourceReferences: pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences.fromMap((map['datasourceReferences']! as Map).cast<String, dynamic>())),
      exampleQueries: (() { final guardedValue = map['exampleQueries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQuery>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQuery.fromMap((value as Map).cast<String, dynamic>()))); })(),
      glossaryTerms: (() { final guardedValue = map['glossaryTerms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextGlossaryTerm>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextGlossaryTerm.fromMap((value as Map).cast<String, dynamic>()))); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schemaRelationships: (() { final guardedValue = map['schemaRelationships']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationship>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationship.fromMap((value as Map).cast<String, dynamic>()))); })(),
      systemInstruction: (() { final guardedValue = map['systemInstruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
