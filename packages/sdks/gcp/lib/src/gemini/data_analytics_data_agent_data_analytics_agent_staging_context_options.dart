// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_options_analysis.dart';
import 'data_analytics_data_agent_data_analytics_agent_staging_context_options_datasource.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptions {
  /// Optional. Options for analysis.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysis?>? analysis;
  /// Optional. Options for datasource configuration.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsDatasource?>? datasource;
  /// Optional. The model to use for the agent loop.
  final pulumi.Input<String?>? model;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptions].
  /// [analysis] Optional. Options for analysis.
  /// [datasource] Optional. Options for datasource configuration.
  /// [model] Optional. The model to use for the agent loop.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptions({
    this.analysis,
    this.datasource,
    this.model,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysis': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysis, Map<String, dynamic>>(analysis, (value) => value.toMap()),
      'datasource': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsDatasource, Map<String, dynamic>>(datasource, (value) => value.toMap()),
      'model': ?model,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptions.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptions(
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datasource: (() { final guardedValue = map['datasource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsDatasource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
