// ignore_for_file: unused_element, unnecessary_cast


class RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures {
  /// Optional. Whether to enable nested virtualization or not (default is false).
  final bool? enableNestedVirtualization;
  /// Optional. Whether to enable UEFI networking for instance creation.
  final bool? enableUefiNetworking;
  /// Optional. The number of threads per physical core.
  final int? threadsPerCore;
  /// Optional. The number of physical cores to expose to an instance.
  final int? visibleCoreCount;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures].
  /// [enableNestedVirtualization] Optional. Whether to enable nested virtualization or not (default is false).
  /// [enableUefiNetworking] Optional. Whether to enable UEFI networking for instance creation.
  /// [threadsPerCore] Optional. The number of threads per physical core.
  /// [visibleCoreCount] Optional. The number of physical cores to expose to an instance.
  RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.enableUefiNetworking,
    this.threadsPerCore,
    this.visibleCoreCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableNestedVirtualization': ?enableNestedVirtualization,
      'enableUefiNetworking': ?enableUefiNetworking,
      'threadsPerCore': ?threadsPerCore,
      'visibleCoreCount': ?visibleCoreCount,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures(
      enableNestedVirtualization: map['enableNestedVirtualization'] == null ? null : map['enableNestedVirtualization'] as bool,
      enableUefiNetworking: map['enableUefiNetworking'] == null ? null : map['enableUefiNetworking'] as bool,
      threadsPerCore: map['threadsPerCore'] == null ? null : map['threadsPerCore'] as int,
      visibleCoreCount: map['visibleCoreCount'] == null ? null : map['visibleCoreCount'] as int,
    );
  }
}

