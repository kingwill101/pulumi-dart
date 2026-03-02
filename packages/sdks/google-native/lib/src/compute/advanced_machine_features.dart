// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_machine_features_performance_monitoring_unit.dart';

/// Specifies options for controlling advanced machine features. Options that would traditionally be configured in a BIOS belong here. Features that require operating system support may have corresponding entries in the GuestOsFeatures of an Image (e.g., whether or not the OS in the Image supports nested virtualization being enabled or disabled).
class AdvancedMachineFeatures {
  /// Whether to enable nested virtualization or not (default is false).
  final pulumi.Input<bool>? enableNestedVirtualization;
  /// Whether to enable UEFI networking for instance creation.
  final pulumi.Input<bool>? enableUefiNetworking;
  /// The number of vNUMA nodes.
  final pulumi.Input<int>? numaNodeCount;
  /// Type of Performance Monitoring Unit requested on instance.
  final pulumi.Input<AdvancedMachineFeaturesPerformanceMonitoringUnit>? performanceMonitoringUnit;
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final pulumi.Input<int>? threadsPerCore;
  /// The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance's nominal CPU count and the underlying platform's SMT width.
  final pulumi.Input<int>? visibleCoreCount;

  /// Creates a new [AdvancedMachineFeatures].
  /// [enableNestedVirtualization] Whether to enable nested virtualization or not (default is false).
  /// [enableUefiNetworking] Whether to enable UEFI networking for instance creation.
  /// [numaNodeCount] The number of vNUMA nodes.
  /// [performanceMonitoringUnit] Type of Performance Monitoring Unit requested on instance.
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  /// [visibleCoreCount] The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance's nominal CPU count and the underlying platform's SMT width.
  AdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.enableUefiNetworking,
    this.numaNodeCount,
    this.performanceMonitoringUnit,
    this.threadsPerCore,
    this.visibleCoreCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableNestedVirtualization': ?enableNestedVirtualization,
      'enableUefiNetworking': ?enableUefiNetworking,
      'numaNodeCount': ?numaNodeCount,
      'performanceMonitoringUnit': ?pulumi.Input.mapOptionalInputValue<AdvancedMachineFeaturesPerformanceMonitoringUnit, String>(performanceMonitoringUnit, (value) => value.value),
      'threadsPerCore': ?threadsPerCore,
      'visibleCoreCount': ?visibleCoreCount,
    };
  }

  factory AdvancedMachineFeatures.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeatures(
      enableNestedVirtualization: map['enableNestedVirtualization'] == null ? null : (map['enableNestedVirtualization'] as bool).input(),
      enableUefiNetworking: map['enableUefiNetworking'] == null ? null : (map['enableUefiNetworking'] as bool).input(),
      numaNodeCount: map['numaNodeCount'] == null ? null : (map['numaNodeCount'] as int).input(),
      performanceMonitoringUnit: map['performanceMonitoringUnit'] == null ? null : (AdvancedMachineFeaturesPerformanceMonitoringUnit.fromValue(map['performanceMonitoringUnit'] as String)).input(),
      threadsPerCore: map['threadsPerCore'] == null ? null : (map['threadsPerCore'] as int).input(),
      visibleCoreCount: map['visibleCoreCount'] == null ? null : (map['visibleCoreCount'] as int).input(),
    );
  }
}

