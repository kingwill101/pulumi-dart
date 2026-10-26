// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_last_published_context_datasource_references_bq.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferences {
  /// References to BigQuery tables.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBq?>? bq;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferences].
  /// [bq] References to BigQuery tables.
  const DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferences({
    this.bq,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bq': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBq, Map<String, dynamic>>(bq, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferences.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferences(
      bq: (() { final guardedValue = map['bq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferencesBq.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
