// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_last_published_context_datasource_references_bq_table_reference.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBq {
  /// References to BigQuery tables.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBqTableReference>?>? tableReferences;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBq].
  /// [tableReferences] References to BigQuery tables.
  const DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBq({
    this.tableReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableReferences': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBqTableReference>, List<Map<String, dynamic>>>(tableReferences, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBqTableReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBq.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBq(
      tableReferences: (() { final guardedValue = map['tableReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBqTableReference>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBqTableReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
