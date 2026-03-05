// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodeConfigAdvancedMachineFeatures {
  /// Defines whether the instance should have nested virtualization enabled. Defaults to false.
  final pulumi.Input<bool>? enableNestedVirtualization;
  /// Defines the performance monitoring unit [PMU](https://cloud.google.com/compute/docs/pmu-overview) level. Valid values are `ARCHITECTURAL`, `STANDARD`, or `ENHANCED`. Defaults to off.
  final pulumi.Input<String>? performanceMonitoringUnit;
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final pulumi.Input<int> threadsPerCore;

  /// Creates a new [ClusterNodeConfigAdvancedMachineFeatures].
  /// [enableNestedVirtualization] Defines whether the instance should have nested virtualization enabled. Defaults to false.
  /// [performanceMonitoringUnit] Defines the performance monitoring unit [PMU](https://cloud.google.com/compute/docs/pmu-overview) level. Valid values are `ARCHITECTURAL`, `STANDARD`, or `ENHANCED`. Defaults to off.
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  ClusterNodeConfigAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.performanceMonitoringUnit,
    required this.threadsPerCore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableNestedVirtualization': ?enableNestedVirtualization,
      'performanceMonitoringUnit': ?performanceMonitoringUnit,
      'threadsPerCore': threadsPerCore,
    };
  }

  factory ClusterNodeConfigAdvancedMachineFeatures.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigAdvancedMachineFeatures(
      enableNestedVirtualization: (() { final guardedValue = map['enableNestedVirtualization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      performanceMonitoringUnit: (() { final guardedValue = map['performanceMonitoringUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threadsPerCore: pulumi.Input.fromValue(map['threadsPerCore'] as int),
    );
  }
}

