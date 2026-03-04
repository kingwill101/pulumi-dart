/// Sizing optimization strategy specifies the preferred strategy used when extrapolating usage data to calculate insights and recommendations for a virtual machine. If you are unsure which value to set, a moderate sizing optimization strategy is often a good value to start with.
enum VirtualMachinePreferencesSizingOptimizationStrategyMigrationcenterV1alpha1 {
  sizingOptimizationStrategyUnspecified(
    "SIZING_OPTIMIZATION_STRATEGY_UNSPECIFIED",
  ),
  sizingOptimizationStrategySameAsSource(
    "SIZING_OPTIMIZATION_STRATEGY_SAME_AS_SOURCE",
  ),
  sizingOptimizationStrategyModerate("SIZING_OPTIMIZATION_STRATEGY_MODERATE"),
  sizingOptimizationStrategyAggressive(
    "SIZING_OPTIMIZATION_STRATEGY_AGGRESSIVE",
  ),
  sizingOptimizationStrategyCustom("SIZING_OPTIMIZATION_STRATEGY_CUSTOM");

  const VirtualMachinePreferencesSizingOptimizationStrategyMigrationcenterV1alpha1(
    this.wireValue,
  );
  final String wireValue;

  static VirtualMachinePreferencesSizingOptimizationStrategyMigrationcenterV1alpha1
  fromValue(String value) {
    for (final item
        in VirtualMachinePreferencesSizingOptimizationStrategyMigrationcenterV1alpha1
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown VirtualMachinePreferencesSizingOptimizationStrategyMigrationcenterV1alpha1 value: $value',
    );
  }
}
