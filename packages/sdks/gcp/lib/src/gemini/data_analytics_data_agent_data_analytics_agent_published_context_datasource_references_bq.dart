// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_datasource_references_bq_table_reference.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBq {
  /// References to BigQuery tables.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference>?>? tableReferences;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBq].
  /// [tableReferences] References to BigQuery tables.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBq({
    this.tableReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableReferences': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference>, List<Map<String, dynamic>>>(tableReferences, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBq.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBq(
      tableReferences: (() { final guardedValue = map['tableReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBqTableReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
