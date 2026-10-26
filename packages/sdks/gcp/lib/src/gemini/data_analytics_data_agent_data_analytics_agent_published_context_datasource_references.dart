// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_datasource_references_bq.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences {
  /// References to BigQuery tables.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBq> bq;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences].
  /// [bq] References to BigQuery tables.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences({
    required this.bq,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bq': pulumi.Input.mapInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBq, Map<String, dynamic>>(bq, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences(
      bq: pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBq.fromMap((map['bq']! as Map).cast<String, dynamic>())),
    );
  }
}
