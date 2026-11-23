// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_bq_table_reference_schema.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReference {
  /// The dataset that the table belongs to.
  final pulumi.Input<String> datasetId;
  /// The project that the table belongs to.
  final pulumi.Input<String> projectId;
  /// Optional. The schema of the datasource.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchema?>? schema;
  /// The table ID.
  final pulumi.Input<String> tableId;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReference].
  /// [datasetId] The dataset that the table belongs to.
  /// [projectId] The project that the table belongs to.
  /// [schema] Optional. The schema of the datasource.
  /// [tableId] The table ID.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReference({
    required this.datasetId,
    required this.projectId,
    this.schema,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
      'schema': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'tableId': tableId,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReference.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReference(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReferenceSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}
