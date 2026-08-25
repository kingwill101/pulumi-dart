// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeConfigAdvancedMachineFeatures {
  /// Whether the node should have nested virtualization enabled.
  final pulumi.Input<bool?>? enableNestedVirtualization;
  /// Level of Performance Monitoring Unit (PMU) requested. If unset, no access to the PMU is assumed.
  final pulumi.Input<String?>? performanceMonitoringUnit;
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final pulumi.Input<int> threadsPerCore;

  /// Creates a new [NodePoolNodeConfigAdvancedMachineFeatures].
  /// [enableNestedVirtualization] Whether the node should have nested virtualization enabled.
  /// [performanceMonitoringUnit] Level of Performance Monitoring Unit (PMU) requested. If unset, no access to the PMU is assumed.
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  const NodePoolNodeConfigAdvancedMachineFeatures({
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

  factory NodePoolNodeConfigAdvancedMachineFeatures.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigAdvancedMachineFeatures(
      enableNestedVirtualization: (() { final guardedValue = map['enableNestedVirtualization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      performanceMonitoringUnit: (() { final guardedValue = map['performanceMonitoringUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threadsPerCore: pulumi.Input.fromValue((map['threadsPerCore'] as num).toInt()),
    );
  }
}
