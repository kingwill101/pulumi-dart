// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_bq.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences {
  /// References to BigQuery tables.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBq> bq;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences].
  /// [bq] References to BigQuery tables.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences({
    required this.bq,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bq': pulumi.Input.mapInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBq, Map<String, dynamic>>(bq, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences(
      bq: pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBq.fromMap((map['bq']! as Map).cast<String, dynamic>())),
    );
  }
}
