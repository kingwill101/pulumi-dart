// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceTemplateAdvancedMachineFeature {
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

  /// Creates a new [GetRegionInstanceTemplateAdvancedMachineFeature].
  /// [enableNestedVirtualization] Whether to enable nested virtualization or not.
  /// [enableUefiNetworking] Whether to enable UEFI networking or not.
  /// [performanceMonitoringUnit] The PMU is a hardware component within the CPU core that monitors how the processor runs code. Valid values for the level of PMU are "STANDARD", "ENHANCED", and "ARCHITECTURAL".
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  /// [turboMode] Turbo frequency mode to use for the instance. Currently supported modes is "ALL_CORE_MAX".
  /// [visibleCoreCount] The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\'s nominal CPU count and the underlying platform\'s SMT width.
  const GetRegionInstanceTemplateAdvancedMachineFeature({
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

  factory GetRegionInstanceTemplateAdvancedMachineFeature.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceTemplateAdvancedMachineFeature(
      enableNestedVirtualization: pulumi.Input.fromValue(map['enableNestedVirtualization'] as bool),
      enableUefiNetworking: pulumi.Input.fromValue(map['enableUefiNetworking'] as bool),
      performanceMonitoringUnit: pulumi.Input.fromValue(map['performanceMonitoringUnit'] as String),
      threadsPerCore: pulumi.Input.fromValue(map['threadsPerCore'] as int),
      turboMode: pulumi.Input.fromValue(map['turboMode'] as String),
      visibleCoreCount: pulumi.Input.fromValue(map['visibleCoreCount'] as int),
    );
  }
}
