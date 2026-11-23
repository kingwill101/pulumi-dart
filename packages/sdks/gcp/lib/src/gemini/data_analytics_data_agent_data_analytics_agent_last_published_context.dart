// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_last_published_context_datasource_references.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContext {
  /// Output only. Data sources that are available for answering questions.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferences?>? datasourceReferences;
  /// Output only. The basic entry point for data owners creating domain
  /// knowledge for the agent.
  final pulumi.Input<String?>? systemInstruction;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContext].
  /// [datasourceReferences] Output only. Data sources that are available for answering questions.
  /// [systemInstruction] Output only. The basic entry point for data owners creating domain
  const DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContext({
    this.datasourceReferences,
    this.systemInstruction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasourceReferences': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferences, Map<String, dynamic>>(datasourceReferences, (value) => value.toMap()),
      'systemInstruction': ?systemInstruction,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContext.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContext(
      datasourceReferences: (() { final guardedValue = map['datasourceReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentLastPublishedContextDatasourceReferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      systemInstruction: (() { final guardedValue = map['systemInstruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
