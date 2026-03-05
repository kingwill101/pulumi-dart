/// Whether the resource is continuously analyzed.
enum DiscoveredContinuousAnalysis {
  continuousAnalysisUnspecified("CONTINUOUS_ANALYSIS_UNSPECIFIED"),
  active("ACTIVE"),
  inactive("INACTIVE");

  const DiscoveredContinuousAnalysis(this.wireValue);
  final String wireValue;

  static DiscoveredContinuousAnalysis fromValue(String value) {
    for (final item in DiscoveredContinuousAnalysis.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveredContinuousAnalysis value: $value');
  }
}

