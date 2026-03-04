// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineManagerVirtualMachineInstanceHardware {
  /// The number of vCPUs for the Virtual Machine. Possible values are between `1` and `64`.
  final pulumi.Input<int>? cpuCount;

  /// The max dynamic memory for the Virtual Machine. Possible values are between `32` and `1048576`.
  final pulumi.Input<int>? dynamicMemoryMaxInMb;

  /// The min dynamic memory for the Virtual Machine. Possible values are between `32` and `1048576`.
  final pulumi.Input<int>? dynamicMemoryMinInMb;

  /// Whether processor compatibility mode for live migration of Virtual Machines is enabled.
  final pulumi.Input<bool>? limitCpuForMigrationEnabled;

  /// The size of a Virtual Machine's memory. Possible values are between `32` and `1048576`.
  final pulumi.Input<int>? memoryInMb;

  /// Creates a new [VirtualMachineManagerVirtualMachineInstanceHardware].
  /// [cpuCount] The number of vCPUs for the Virtual Machine. Possible values are between `1` and `64`.
  /// [dynamicMemoryMaxInMb] The max dynamic memory for the Virtual Machine. Possible values are between `32` and `1048576`.
  /// [dynamicMemoryMinInMb] The min dynamic memory for the Virtual Machine. Possible values are between `32` and `1048576`.
  /// [limitCpuForMigrationEnabled] Whether processor compatibility mode for live migration of Virtual Machines is enabled.
  /// [memoryInMb] The size of a Virtual Machine's memory. Possible values are between `32` and `1048576`.
  VirtualMachineManagerVirtualMachineInstanceHardware({
    this.cpuCount,
    this.dynamicMemoryMaxInMb,
    this.dynamicMemoryMinInMb,
    this.limitCpuForMigrationEnabled,
    this.memoryInMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': ?cpuCount,
      'dynamicMemoryMaxInMb': ?dynamicMemoryMaxInMb,
      'dynamicMemoryMinInMb': ?dynamicMemoryMinInMb,
      'limitCpuForMigrationEnabled': ?limitCpuForMigrationEnabled,
      'memoryInMb': ?memoryInMb,
    };
  }

  factory VirtualMachineManagerVirtualMachineInstanceHardware.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachineManagerVirtualMachineInstanceHardware(
      cpuCount: (() {
        final guardedValue = map['cpuCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dynamicMemoryMaxInMb: (() {
        final guardedValue = map['dynamicMemoryMaxInMb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dynamicMemoryMinInMb: (() {
        final guardedValue = map['dynamicMemoryMinInMb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      limitCpuForMigrationEnabled: (() {
        final guardedValue = map['limitCpuForMigrationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      memoryInMb: (() {
        final guardedValue = map['memoryInMb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
