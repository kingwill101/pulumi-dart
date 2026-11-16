// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_bq.dart';
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_looker.dart';
import 'data_analytics_data_agent_data_analytics_agent_staging_context_datasource_references_studio.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences {
  /// References to BigQuery tables.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBq?>? bq;
  /// References to Looker explores.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLooker?>? looker;
  /// References to Looker Studio datasources.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudio?>? studio;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences].
  /// [bq] References to BigQuery tables.
  /// [looker] References to Looker explores.
  /// [studio] References to Looker Studio datasources.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences({
    this.bq,
    this.looker,
    this.studio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bq': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBq, Map<String, dynamic>>(bq, (value) => value.toMap()),
      'looker': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLooker, Map<String, dynamic>>(looker, (value) => value.toMap()),
      'studio': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudio, Map<String, dynamic>>(studio, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferences(
      bq: (() { final guardedValue = map['bq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesBq.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      looker: (() { final guardedValue = map['looker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesLooker.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      studio: (() { final guardedValue = map['studio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextDatasourceReferencesStudio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
