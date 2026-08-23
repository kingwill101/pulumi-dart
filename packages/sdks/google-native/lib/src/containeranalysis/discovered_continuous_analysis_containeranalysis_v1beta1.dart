/// Whether the resource is continuously analyzed.
enum DiscoveredContinuousAnalysisContaineranalysisV1beta1 {
  continuousAnalysisUnspecified("CONTINUOUS_ANALYSIS_UNSPECIFIED"),
  active("ACTIVE"),
  inactive("INACTIVE");

  const DiscoveredContinuousAnalysisContaineranalysisV1beta1(this.wireValue);
  final String wireValue;

  static DiscoveredContinuousAnalysisContaineranalysisV1beta1 fromValue(String value) {
    for (final item in DiscoveredContinuousAnalysisContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveredContinuousAnalysisContaineranalysisV1beta1 value: $value');
  }
}
