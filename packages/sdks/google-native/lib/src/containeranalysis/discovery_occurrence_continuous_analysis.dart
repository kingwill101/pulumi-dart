import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether the resource is continuously analyzed.
enum DiscoveryOccurrenceContinuousAnalysis implements pulumi.PulumiEnum<String> {
  continuousAnalysisUnspecified("CONTINUOUS_ANALYSIS_UNSPECIFIED"),
  active("ACTIVE"),
  inactive("INACTIVE");

  const DiscoveryOccurrenceContinuousAnalysis(this.wireValue);
  @override
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
