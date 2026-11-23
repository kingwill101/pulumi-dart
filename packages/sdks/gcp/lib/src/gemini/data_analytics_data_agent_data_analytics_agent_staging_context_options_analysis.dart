// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_options_analysis_python.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysis {
  /// Optional. Options for Python analysis.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysisPython?>? python;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysis].
  /// [python] Optional. Options for Python analysis.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysis({
    this.python,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'python': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysisPython, Map<String, dynamic>>(python, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysis.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysis(
      python: (() { final guardedValue = map['python']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysisPython.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
