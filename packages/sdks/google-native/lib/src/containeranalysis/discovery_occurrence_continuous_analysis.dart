/// Whether the resource is continuously analyzed.
enum DiscoveryOccurrenceContinuousAnalysis {
  continuousAnalysisUnspecified("CONTINUOUS_ANALYSIS_UNSPECIFIED"),
  active("ACTIVE"),
  inactive("INACTIVE");

  const DiscoveryOccurrenceContinuousAnalysis(this.wireValue);
  final String wireValue;

  static DiscoveryOccurrenceContinuousAnalysis fromValue(String value) {
    for (final item in DiscoveryOccurrenceContinuousAnalysis.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryOccurrenceContinuousAnalysis value: $value');
  }
}

