/// Ratio-based metric type. Only one of type or count_type is specified in each Metric.
enum GoogleCloudDialogflowCxV3beta1ExperimentResultMetricType {
  metricUnspecified("METRIC_UNSPECIFIED"),
  containedSessionNoCallbackRate("CONTAINED_SESSION_NO_CALLBACK_RATE"),
  liveAgentHandoffRate("LIVE_AGENT_HANDOFF_RATE"),
  callbackSessionRate("CALLBACK_SESSION_RATE"),
  abandonedSessionRate("ABANDONED_SESSION_RATE"),
  sessionEndRate("SESSION_END_RATE");

  const GoogleCloudDialogflowCxV3beta1ExperimentResultMetricType(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowCxV3beta1ExperimentResultMetricType fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3beta1ExperimentResultMetricType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3beta1ExperimentResultMetricType value: $value');
  }
}
