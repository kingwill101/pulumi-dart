// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineManagerVirtualMachineInstanceHardware {
  /// The number of vCPUs for the Virtual Machine. Possible values are between `1` and `64`.
  final int? cpuCount;
  /// The max dynamic memory for the Virtual Machine. Possible values are between `32` and `1048576`.
  final int? dynamicMemoryMaxInMb;
  /// The min dynamic memory for the Virtual Machine. Possible values are between `32` and `1048576`.
  final int? dynamicMemoryMinInMb;
  /// Whether processor compatibility mode for live migration of Virtual Machines is enabled.
  final bool? limitCpuForMigrationEnabled;
  /// The size of a Virtual Machine's memory. Possible values are between `32` and `1048576`.
  final int? memoryInMb;

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

  factory VirtualMachineManagerVirtualMachineInstanceHardware.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerVirtualMachineInstanceHardware(
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as int,
      dynamicMemoryMaxInMb: map['dynamicMemoryMaxInMb'] == null ? null : map['dynamicMemoryMaxInMb'] as int,
      dynamicMemoryMinInMb: map['dynamicMemoryMinInMb'] == null ? null : map['dynamicMemoryMinInMb'] as int,
      limitCpuForMigrationEnabled: map['limitCpuForMigrationEnabled'] == null ? null : map['limitCpuForMigrationEnabled'] as bool,
      memoryInMb: map['memoryInMb'] == null ? null : map['memoryInMb'] as int,
    );
  }
}

