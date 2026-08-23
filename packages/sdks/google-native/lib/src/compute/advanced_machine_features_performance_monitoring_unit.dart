/// Type of Performance Monitoring Unit requested on instance.
enum AdvancedMachineFeaturesPerformanceMonitoringUnit {
  architectural("ARCHITECTURAL"),
  enhanced("ENHANCED"),
  performanceMonitoringUnitUnspecified("PERFORMANCE_MONITORING_UNIT_UNSPECIFIED"),
  standard("STANDARD");

  const AdvancedMachineFeaturesPerformanceMonitoringUnit(this.wireValue);
  final String wireValue;

  static AdvancedMachineFeaturesPerformanceMonitoringUnit fromValue(String value) {
    for (final item in AdvancedMachineFeaturesPerformanceMonitoringUnit.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdvancedMachineFeaturesPerformanceMonitoringUnit value: $value');
  }
}
