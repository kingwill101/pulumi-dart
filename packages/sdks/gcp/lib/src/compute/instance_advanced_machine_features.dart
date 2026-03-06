// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAdvancedMachineFeatures {
  /// Defines whether the instance should have nested virtualization  enabled. Defaults to false.
  final pulumi.Input<bool>? enableNestedVirtualization;
  /// Whether to enable UEFI networking for instance creation.
  final pulumi.Input<bool>? enableUefiNetworking;
  /// [The PMU](https://cloud.google.com/compute/docs/pmu-overview) is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are `STANDARD`, `ENHANCED`, and `ARCHITECTURAL`.
  final pulumi.Input<String>? performanceMonitoringUnit;
  /// The number of threads per physical core. To disable [simultaneous multithreading (SMT)](https://cloud.google.com/compute/docs/instances/disabling-smt) set this to 1.
  final pulumi.Input<int>? threadsPerCore;
  /// Turbo frequency mode to use for the instance. Supported modes are currently either `ALL_CORE_MAX` or unset (default).
  final pulumi.Input<String>? turboMode;
  /// The number of physical cores to expose to an instance. [visible cores info (VC)](https://cloud.google.com/compute/docs/instances/customize-visible-cores).
  final pulumi.Input<int>? visibleCoreCount;

  /// Creates a new [InstanceAdvancedMachineFeatures].
  /// [enableNestedVirtualization] Defines whether the instance should have nested virtualization  enabled. Defaults to false.
  /// [enableUefiNetworking] Whether to enable UEFI networking for instance creation.
  /// [performanceMonitoringUnit] [The PMU](https://cloud.google.com/compute/docs/pmu-overview) is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are `STANDARD`, `ENHANCED`, and `ARCHITECTURAL`.
  /// [threadsPerCore] The number of threads per physical core. To disable [simultaneous multithreading (SMT)](https://cloud.google.com/compute/docs/instances/disabling-smt) set this to 1.
  /// [turboMode] Turbo frequency mode to use for the instance. Supported modes are currently either `ALL_CORE_MAX` or unset (default).
  /// [visibleCoreCount] The number of physical cores to expose to an instance. [visible cores info (VC)](https://cloud.google.com/compute/docs/instances/customize-visible-cores).
  const InstanceAdvancedMachineFeatures({
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

  factory InstanceAdvancedMachineFeatures.fromMap(Map<String, dynamic> map) {
    return InstanceAdvancedMachineFeatures(
      enableNestedVirtualization: (() { final guardedValue = map['enableNestedVirtualization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableUefiNetworking: (() { final guardedValue = map['enableUefiNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      performanceMonitoringUnit: (() { final guardedValue = map['performanceMonitoringUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threadsPerCore: (() { final guardedValue = map['threadsPerCore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      turboMode: (() { final guardedValue = map['turboMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visibleCoreCount: (() { final guardedValue = map['visibleCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

