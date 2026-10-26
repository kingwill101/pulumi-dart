// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_bq_table_reference.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBq {
  /// References to BigQuery tables.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReference>?>? tableReferences;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBq].
  /// [tableReferences] References to BigQuery tables.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBq({
    this.tableReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableReferences': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReference>, List<Map<String, dynamic>>>(tableReferences, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBq.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBq(
      tableReferences: (() { final guardedValue = map['tableReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReference>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBqTableReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
