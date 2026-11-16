// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_options_analysis.dart';
import 'data_analytics_data_agent_data_analytics_agent_published_context_options_datasource.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptions {
  /// Optional. Options for analysis.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysis?>? analysis;
  /// Optional. Options for datasource configuration.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsDatasource?>? datasource;
  /// Optional. The model to use for the agent loop.
  final pulumi.Input<String?>? model;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptions].
  /// [analysis] Optional. Options for analysis.
  /// [datasource] Optional. Options for datasource configuration.
  /// [model] Optional. The model to use for the agent loop.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptions({
    this.analysis,
    this.datasource,
    this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysis': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysis, Map<String, dynamic>>(analysis, (value) => value.toMap()),
      'datasource': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsDatasource, Map<String, dynamic>>(datasource, (value) => value.toMap()),
      'model': ?model,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptions.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptions(
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datasource: (() { final guardedValue = map['datasource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsDatasource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
