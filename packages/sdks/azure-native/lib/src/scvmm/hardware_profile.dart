// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the resource properties.
class HardwareProfile {
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

  /// Creates a new [HardwareProfile].
  /// [cpuCount] Gets or sets the number of vCPUs for the vm.
  /// [dynamicMemoryEnabled] Gets or sets a value indicating whether to enable dynamic memory or not.
  /// [dynamicMemoryMaxMB] Gets or sets the max dynamic memory for the vm.
  /// [dynamicMemoryMinMB] Gets or sets the min dynamic memory for the vm.
  /// [isHighlyAvailable] Gets highly available property.
  /// [limitCpuForMigration] Gets or sets a value indicating whether to enable processor compatibility mode for live migration of VMs.
  /// [memoryMB] MemoryMB is the size of a virtual machine's memory, in MB.
  HardwareProfile({
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

  factory HardwareProfile.fromMap(Map<String, dynamic> map) {
    return HardwareProfile(
      cpuCount: map['cpuCount'] == null ? null : (map['cpuCount']! as int).input(),
      dynamicMemoryEnabled: map['dynamicMemoryEnabled'] == null ? null : (map['dynamicMemoryEnabled']! as String).input(),
      dynamicMemoryMaxMB: map['dynamicMemoryMaxMB'] == null ? null : (map['dynamicMemoryMaxMB']! as int).input(),
      dynamicMemoryMinMB: map['dynamicMemoryMinMB'] == null ? null : (map['dynamicMemoryMinMB']! as int).input(),
      isHighlyAvailable: map['isHighlyAvailable'] == null ? null : (map['isHighlyAvailable']! as String).input(),
      limitCpuForMigration: map['limitCpuForMigration'] == null ? null : (map['limitCpuForMigration']! as String).input(),
      memoryMB: map['memoryMB'] == null ? null : (map['memoryMB']! as int).input(),
    );
  }
}

