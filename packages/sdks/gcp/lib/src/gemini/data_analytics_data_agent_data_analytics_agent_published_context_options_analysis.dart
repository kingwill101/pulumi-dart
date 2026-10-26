// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_options_analysis_python.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysis {
  /// Optional. Options for Python analysis.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysisPython?>? python;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysis].
  /// [python] Optional. Options for Python analysis.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysis({
    this.python,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'python': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysisPython, Map<String, dynamic>>(python, (value) => value.toMap()),
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysis.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysis(
      python: (() { final guardedValue = map['python']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextOptionsAnalysisPython.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
