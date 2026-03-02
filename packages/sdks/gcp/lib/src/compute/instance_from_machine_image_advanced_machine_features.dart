// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromMachineImageAdvancedMachineFeatures {
  /// Whether to enable nested virtualization or not.
  final pulumi.Input<bool>? enableNestedVirtualization;
  /// Whether to enable UEFI networking for the instance.
  final pulumi.Input<bool>? enableUefiNetworking;
  /// The PMU is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are "STANDARD", "ENHANCED", and "ARCHITECTURAL".
  final pulumi.Input<String>? performanceMonitoringUnit;
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final pulumi.Input<int>? threadsPerCore;
  /// Turbo frequency mode to use for the instance. Currently supported modes is "ALL_CORE_MAX".
  final pulumi.Input<String>? turboMode;
  /// The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width.
  final pulumi.Input<int>? visibleCoreCount;

  /// Creates a new [InstanceFromMachineImageAdvancedMachineFeatures].
  /// [enableNestedVirtualization] Whether to enable nested virtualization or not.
  /// [enableUefiNetworking] Whether to enable UEFI networking for the instance.
  /// [performanceMonitoringUnit] The PMU is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are "STANDARD", "ENHANCED", and "ARCHITECTURAL".
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  /// [turboMode] Turbo frequency mode to use for the instance. Currently supported modes is "ALL_CORE_MAX".
  /// [visibleCoreCount] The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width.
  InstanceFromMachineImageAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.enableUefiNetworking,
    this.performanceMonitoringUnit,
    this.threadsPerCore,
    this.turboMode,
    this.visibleCoreCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableNestedVirtualization': ?enableNestedVirtualization,
      'enableUefiNetworking': ?enableUefiNetworking,
      'performanceMonitoringUnit': ?performanceMonitoringUnit,
      'threadsPerCore': ?threadsPerCore,
      'turboMode': ?turboMode,
      'visibleCoreCount': ?visibleCoreCount,
    };
  }

  factory InstanceFromMachineImageAdvancedMachineFeatures.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageAdvancedMachineFeatures(
      enableNestedVirtualization: map['enableNestedVirtualization'] == null ? null : (map['enableNestedVirtualization']! as bool).input(),
      enableUefiNetworking: map['enableUefiNetworking'] == null ? null : (map['enableUefiNetworking']! as bool).input(),
      performanceMonitoringUnit: map['performanceMonitoringUnit'] == null ? null : (map['performanceMonitoringUnit']! as String).input(),
      threadsPerCore: map['threadsPerCore'] == null ? null : (map['threadsPerCore']! as int).input(),
      turboMode: map['turboMode'] == null ? null : (map['turboMode']! as String).input(),
      visibleCoreCount: map['visibleCoreCount'] == null ? null : (map['visibleCoreCount']! as int).input(),
    );
  }
}

