// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesAdvancedMachineFeatures {
  /// Optional. Whether to enable nested virtualization or not (default is false).
  final pulumi.Input<bool>? enableNestedVirtualization;
  /// Optional. Whether to enable UEFI networking for instance creation.
  final pulumi.Input<bool>? enableUefiNetworking;
  /// Optional. The number of threads per physical core.
  final pulumi.Input<int>? threadsPerCore;
  /// Optional. The number of physical cores to expose to an instance.
  final pulumi.Input<int>? visibleCoreCount;

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
      enableNestedVirtualization: (() { final guardedValue = map['enableNestedVirtualization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableUefiNetworking: (() { final guardedValue = map['enableUefiNetworking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      threadsPerCore: (() { final guardedValue = map['threadsPerCore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      visibleCoreCount: (() { final guardedValue = map['visibleCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

