/// Optional. The optimization strategy of the job. The default is `AUTODETECT`.
enum JobOptimization {
  optimizationStrategyUnspecified("OPTIMIZATION_STRATEGY_UNSPECIFIED"),
  autodetect("AUTODETECT"),
  disabled("DISABLED");

  const JobOptimization(this.wireValue);
  final String wireValue;

  static JobOptimization fromValue(String value) {
    for (final item in JobOptimization.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobOptimization value: $value');
  }
}
