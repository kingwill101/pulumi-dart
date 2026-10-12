// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppLoggingSettingsMetricAnalysisSettings {
  /// Whether to collect conversation data for llm analysis metrics. If true,
  /// conversation data will not be collected for llm analysis metrics;
  /// otherwise, conversation data will be collected.
  final pulumi.Input<bool?>? llmMetricsOptedOut;

  /// Creates a new [AppLoggingSettingsMetricAnalysisSettings].
  /// [llmMetricsOptedOut] Whether to collect conversation data for llm analysis metrics. If true,
  const AppLoggingSettingsMetricAnalysisSettings({
    this.llmMetricsOptedOut,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'llmMetricsOptedOut': ?llmMetricsOptedOut,
    };
  }

  factory AppLoggingSettingsMetricAnalysisSettings.fromMap(Map<String, dynamic> map) {
    return AppLoggingSettingsMetricAnalysisSettings(
      llmMetricsOptedOut: (() { final guardedValue = map['llmMetricsOptedOut']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
