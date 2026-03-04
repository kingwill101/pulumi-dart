// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Custom data to use for sizing optimizations.
class VirtualMachinePreferencesSizingOptimizationCustomParametersResponse {
  /// Optional. Type of statistical aggregation of a resource utilization data, on which to base the sizing metrics.
  final pulumi.Input<String> aggregationMethod;

  /// Optional. Desired percentage of CPU usage. Must be in the interval [1, 100] (or 0 for default value).
  final pulumi.Input<int> cpuUsagePercentage;

  /// Optional. Desired percentage of memory usage. Must be in the interval [1, 100] (or 0 for default value).
  final pulumi.Input<int> memoryUsagePercentage;

  /// Optional. Desired increase factor of storage, relative to currently used storage. Must be in the interval [1.0, 2.0] (or 0 for default value).
  final pulumi.Input<double> storageMultiplier;

  /// Creates a new [VirtualMachinePreferencesSizingOptimizationCustomParametersResponse].
  /// [aggregationMethod] Optional. Type of statistical aggregation of a resource utilization data, on which to base the sizing metrics.
  /// [cpuUsagePercentage] Optional. Desired percentage of CPU usage. Must be in the interval [1, 100] (or 0 for default value).
  /// [memoryUsagePercentage] Optional. Desired percentage of memory usage. Must be in the interval [1, 100] (or 0 for default value).
  /// [storageMultiplier] Optional. Desired increase factor of storage, relative to currently used storage. Must be in the interval [1.0, 2.0] (or 0 for default value).
  VirtualMachinePreferencesSizingOptimizationCustomParametersResponse({
    required this.aggregationMethod,
    required this.cpuUsagePercentage,
    required this.memoryUsagePercentage,
    required this.storageMultiplier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationMethod': aggregationMethod,
      'cpuUsagePercentage': cpuUsagePercentage,
      'memoryUsagePercentage': memoryUsagePercentage,
      'storageMultiplier': storageMultiplier,
    };
  }

  factory VirtualMachinePreferencesSizingOptimizationCustomParametersResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachinePreferencesSizingOptimizationCustomParametersResponse(
      aggregationMethod: pulumi.Input.fromValue(
        map['aggregationMethod'] as String,
      ),
      cpuUsagePercentage: pulumi.Input.fromValue(
        map['cpuUsagePercentage'] as int,
      ),
      memoryUsagePercentage: pulumi.Input.fromValue(
        map['memoryUsagePercentage'] as int,
      ),
      storageMultiplier: pulumi.Input.fromValue(
        map['storageMultiplier'] as double,
      ),
    );
  }
}
