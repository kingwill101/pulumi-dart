// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the resource properties.
class HardwareProfileResponse {
  /// Gets or sets the number of vCPUs for the vm.
  final pulumi.Input<int>? cpuCount;
  /// Gets or sets a value indicating whether to enable dynamic memory or not.
  final pulumi.Input<String>? dynamicMemoryEnabled;
  /// Gets or sets the max dynamic memory for the vm.
  final pulumi.Input<int>? dynamicMemoryMaxMB;
  /// Gets or sets the min dynamic memory for the vm.
  final pulumi.Input<int>? dynamicMemoryMinMB;
  /// Gets highly available property.
  final pulumi.Input<String>? isHighlyAvailable;
  /// Gets or sets a value indicating whether to enable processor compatibility mode for live migration of VMs.
  final pulumi.Input<String>? limitCpuForMigration;
  /// MemoryMB is the size of a virtual machine's memory, in MB.
  final pulumi.Input<int>? memoryMB;

  /// Creates a new [HardwareProfileResponse].
  /// [cpuCount] Gets or sets the number of vCPUs for the vm.
  /// [dynamicMemoryEnabled] Gets or sets a value indicating whether to enable dynamic memory or not.
  /// [dynamicMemoryMaxMB] Gets or sets the max dynamic memory for the vm.
  /// [dynamicMemoryMinMB] Gets or sets the min dynamic memory for the vm.
  /// [isHighlyAvailable] Gets highly available property.
  /// [limitCpuForMigration] Gets or sets a value indicating whether to enable processor compatibility mode for live migration of VMs.
  /// [memoryMB] MemoryMB is the size of a virtual machine's memory, in MB.
  const HardwareProfileResponse({
    this.cpuCount,
    this.dynamicMemoryEnabled,
    this.dynamicMemoryMaxMB,
    this.dynamicMemoryMinMB,
    this.isHighlyAvailable,
    this.limitCpuForMigration,
    this.memoryMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': ?cpuCount,
      'dynamicMemoryEnabled': ?dynamicMemoryEnabled,
      'dynamicMemoryMaxMB': ?dynamicMemoryMaxMB,
      'dynamicMemoryMinMB': ?dynamicMemoryMinMB,
      'isHighlyAvailable': ?isHighlyAvailable,
      'limitCpuForMigration': ?limitCpuForMigration,
      'memoryMB': ?memoryMB,
    };
  }

  factory HardwareProfileResponse.fromMap(Map<String, dynamic> map) {
    return HardwareProfileResponse(
      cpuCount: (() { final guardedValue = map['cpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dynamicMemoryEnabled: (() { final guardedValue = map['dynamicMemoryEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicMemoryMaxMB: (() { final guardedValue = map['dynamicMemoryMaxMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dynamicMemoryMinMB: (() { final guardedValue = map['dynamicMemoryMinMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      isHighlyAvailable: (() { final guardedValue = map['isHighlyAvailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limitCpuForMigration: (() { final guardedValue = map['limitCpuForMigration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryMB: (() { final guardedValue = map['memoryMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

