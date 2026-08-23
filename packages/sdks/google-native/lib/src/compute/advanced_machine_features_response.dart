// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies options for controlling advanced machine features. Options that would traditionally be configured in a BIOS belong here. Features that require operating system support may have corresponding entries in the GuestOsFeatures of an Image (e.g., whether or not the OS in the Image supports nested virtualization being enabled or disabled).
class AdvancedMachineFeaturesResponse {
  /// Whether to enable nested virtualization or not (default is false).
  final pulumi.Input<bool> enableNestedVirtualization;
  /// Whether to enable UEFI networking for instance creation.
  final pulumi.Input<bool> enableUefiNetworking;
  /// The number of vNUMA nodes.
  final pulumi.Input<int> numaNodeCount;
  /// Type of Performance Monitoring Unit requested on instance.
  final pulumi.Input<String> performanceMonitoringUnit;
  /// The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  final pulumi.Input<int> threadsPerCore;
  /// The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance's nominal CPU count and the underlying platform's SMT width.
  final pulumi.Input<int> visibleCoreCount;

  /// Creates a new [AdvancedMachineFeaturesResponse].
  /// [enableNestedVirtualization] Whether to enable nested virtualization or not (default is false).
  /// [enableUefiNetworking] Whether to enable UEFI networking for instance creation.
  /// [numaNodeCount] The number of vNUMA nodes.
  /// [performanceMonitoringUnit] Type of Performance Monitoring Unit requested on instance.
  /// [threadsPerCore] The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed.
  /// [visibleCoreCount] The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance's nominal CPU count and the underlying platform's SMT width.
  const AdvancedMachineFeaturesResponse({
    required this.enableNestedVirtualization,
    required this.enableUefiNetworking,
    required this.numaNodeCount,
    required this.performanceMonitoringUnit,
    required this.threadsPerCore,
    required this.visibleCoreCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableNestedVirtualization': enableNestedVirtualization,
      'enableUefiNetworking': enableUefiNetworking,
      'numaNodeCount': numaNodeCount,
      'performanceMonitoringUnit': performanceMonitoringUnit,
      'threadsPerCore': threadsPerCore,
      'visibleCoreCount': visibleCoreCount,
    };
  }

  factory AdvancedMachineFeaturesResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedMachineFeaturesResponse(
      enableNestedVirtualization: pulumi.Input.fromValue(map['enableNestedVirtualization'] as bool),
      enableUefiNetworking: pulumi.Input.fromValue(map['enableUefiNetworking'] as bool),
      numaNodeCount: pulumi.Input.fromValue(map['numaNodeCount'] as int),
      performanceMonitoringUnit: pulumi.Input.fromValue(map['performanceMonitoringUnit'] as String),
      threadsPerCore: pulumi.Input.fromValue(map['threadsPerCore'] as int),
      visibleCoreCount: pulumi.Input.fromValue(map['visibleCoreCount'] as int),
    );
  }
}
