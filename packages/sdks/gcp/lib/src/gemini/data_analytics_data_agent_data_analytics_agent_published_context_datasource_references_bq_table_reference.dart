// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_datasource_references_bq_table_reference_schema.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference {
  /// The dataset that the table belongs to.
  final pulumi.Input<String> datasetId;
  /// The project that the table belongs to.
  final pulumi.Input<String> projectId;
  /// Optional. The schema of the datasource.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceSchema?>? schema;
  /// The table ID.
  final pulumi.Input<String> tableId;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference].
  /// [datasetId] The dataset that the table belongs to.
  /// [projectId] The project that the table belongs to.
  /// [schema] Optional. The schema of the datasource.
  /// [tableId] The table ID.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference({
    required this.datasetId,
    required this.projectId,
    this.schema,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
      'schema': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceSchema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'tableId': tableId,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReferenceSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}
