// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTemplateAdvancedMachineFeature {
  /// Whether to enable nested virtualization or not.
  final pulumi.Input<bool> enableNestedVirtualization;
  /// Whether to enable UEFI networking or not.
  final pulumi.Input<bool> enableUefiNetworking;
  /// The PMU is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are "STANDARD", "ENHANCED", and "ARCHITECTURAL".
  final pulumi.Input<String> performanceMonitoringUnit;
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final pulumi.Input<int> threadsPerCore;
  /// Turbo frequency mode to use for the instance. Currently supported modes is "ALL_CORE_MAX".
  final pulumi.Input<String> turboMode;
  /// The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width.
  final pulumi.Input<int> visibleCoreCount;

  /// Creates a new [GetInstanceTemplateAdvancedMachineFeature].
  /// [enableNestedVirtualization] Whether to enable nested virtualization or not.
  /// [enableUefiNetworking] Whether to enable UEFI networking or not.
  /// [performanceMonitoringUnit] The PMU is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are "STANDARD", "ENHANCED", and "ARCHITECTURAL".
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  /// [turboMode] Turbo frequency mode to use for the instance. Currently supported modes is "ALL_CORE_MAX".
  /// [visibleCoreCount] The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width.
  GetInstanceTemplateAdvancedMachineFeature({
    required this.enableNestedVirtualization,
    required this.enableUefiNetworking,
    required this.performanceMonitoringUnit,
    required this.threadsPerCore,
    required this.turboMode,
    required this.visibleCoreCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableNestedVirtualization': enableNestedVirtualization,
      'enableUefiNetworking': enableUefiNetworking,
      'performanceMonitoringUnit': performanceMonitoringUnit,
      'threadsPerCore': threadsPerCore,
      'turboMode': turboMode,
      'visibleCoreCount': visibleCoreCount,
    };
  }

  factory GetInstanceTemplateAdvancedMachineFeature.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateAdvancedMachineFeature(
      enableNestedVirtualization: (map['enableNestedVirtualization'] as bool).input(),
      enableUefiNetworking: (map['enableUefiNetworking'] as bool).input(),
      performanceMonitoringUnit: (map['performanceMonitoringUnit'] as String).input(),
      threadsPerCore: (map['threadsPerCore'] as int).input(),
      turboMode: (map['turboMode'] as String).input(),
      visibleCoreCount: (map['visibleCoreCount'] as int).input(),
    );
  }
}

