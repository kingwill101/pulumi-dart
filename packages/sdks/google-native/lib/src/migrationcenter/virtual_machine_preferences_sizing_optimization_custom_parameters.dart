// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_preferences_sizing_optimization_custom_parameters_aggregation_method.dart';

/// Custom data to use for sizing optimizations.
class VirtualMachinePreferencesSizingOptimizationCustomParameters {
  /// Optional. Type of statistical aggregation of a resource utilization data, on which to base the sizing metrics.
  final pulumi.Input<VirtualMachinePreferencesSizingOptimizationCustomParametersAggregationMethod>? aggregationMethod;
  /// Optional. Desired percentage of CPU usage. Must be in the interval [1, 100] (or 0 for default value).
  final pulumi.Input<int>? cpuUsagePercentage;
  /// Optional. Desired percentage of memory usage. Must be in the interval [1, 100] (or 0 for default value).
  final pulumi.Input<int>? memoryUsagePercentage;
  /// Optional. Desired increase factor of storage, relative to currently used storage. Must be in the interval [1.0, 2.0] (or 0 for default value).
  final pulumi.Input<double>? storageMultiplier;

  /// Creates a new [VirtualMachinePreferencesSizingOptimizationCustomParameters].
  /// [aggregationMethod] Optional. Type of statistical aggregation of a resource utilization data, on which to base the sizing metrics.
  /// [cpuUsagePercentage] Optional. Desired percentage of CPU usage. Must be in the interval [1, 100] (or 0 for default value).
  /// [memoryUsagePercentage] Optional. Desired percentage of memory usage. Must be in the interval [1, 100] (or 0 for default value).
  /// [storageMultiplier] Optional. Desired increase factor of storage, relative to currently used storage. Must be in the interval [1.0, 2.0] (or 0 for default value).
  const VirtualMachinePreferencesSizingOptimizationCustomParameters({
    this.aggregationMethod,
    this.cpuUsagePercentage,
    this.memoryUsagePercentage,
    this.storageMultiplier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationMethod': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePreferencesSizingOptimizationCustomParametersAggregationMethod, String>(aggregationMethod, (value) => value.wireValue),
      'cpuUsagePercentage': ?cpuUsagePercentage,
      'memoryUsagePercentage': ?memoryUsagePercentage,
      'storageMultiplier': ?storageMultiplier,
    };
  }

  factory VirtualMachinePreferencesSizingOptimizationCustomParameters.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePreferencesSizingOptimizationCustomParameters(
      aggregationMethod: (() { final guardedValue = map['aggregationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePreferencesSizingOptimizationCustomParametersAggregationMethod.fromValue(guardedValue as String)); })(),
      cpuUsagePercentage: (() { final guardedValue = map['cpuUsagePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memoryUsagePercentage: (() { final guardedValue = map['memoryUsagePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageMultiplier: (() { final guardedValue = map['storageMultiplier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

