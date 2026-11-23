// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_datasource_references_bq.dart';
import 'data_analytics_data_agent_data_analytics_agent_published_context_datasource_references_looker.dart';
import 'data_analytics_data_agent_data_analytics_agent_published_context_datasource_references_studio.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences {
  /// References to BigQuery tables.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBq?>? bq;
  /// References to Looker explores.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLooker?>? looker;
  /// References to Looker Studio datasources.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudio?>? studio;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences].
  /// [bq] References to BigQuery tables.
  /// [looker] References to Looker explores.
  /// [studio] References to Looker Studio datasources.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences({
    this.bq,
    this.looker,
    this.studio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bq': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBq, Map<String, dynamic>>(bq, (value) => value.toMap()),
      'looker': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLooker, Map<String, dynamic>>(looker, (value) => value.toMap()),
      'studio': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudio, Map<String, dynamic>>(studio, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferences(
      bq: (() { final guardedValue = map['bq']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesBq.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      looker: (() { final guardedValue = map['looker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesLooker.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      studio: (() { final guardedValue = map['studio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextDatasourceReferencesStudio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
