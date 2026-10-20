import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Type of statistical aggregation of a resource utilization data, on which to base the sizing metrics.
enum VirtualMachinePreferencesSizingOptimizationCustomParametersAggregationMethod implements pulumi.PulumiEnum<String> {
  aggregationMethodUnspecified("AGGREGATION_METHOD_UNSPECIFIED"),
  aggregationMethodAverage("AGGREGATION_METHOD_AVERAGE"),
  aggregationMethodMedian("AGGREGATION_METHOD_MEDIAN"),
  aggregationMethodNinetyFifthPercentile("AGGREGATION_METHOD_NINETY_FIFTH_PERCENTILE"),
  aggregationMethodPeak("AGGREGATION_METHOD_PEAK");

  const VirtualMachinePreferencesSizingOptimizationCustomParametersAggregationMethod(this.wireValue);
  @override
  final String wireValue;

  static VirtualMachinePreferencesSizingOptimizationCustomParametersAggregationMethod fromValue(String value) {
    for (final item in VirtualMachinePreferencesSizingOptimizationCustomParametersAggregationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachinePreferencesSizingOptimizationCustomParametersAggregationMethod value: $value');
  }
}
