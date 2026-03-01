// ignore_for_file: unused_element, unnecessary_cast


/// Defines the resource properties.
class HardwareProfileResponse {
  /// Gets or sets the number of vCPUs for the vm.
  final int? cpuCount;
  /// Gets or sets a value indicating whether to enable dynamic memory or not.
  final String? dynamicMemoryEnabled;
  /// Gets or sets the max dynamic memory for the vm.
  final int? dynamicMemoryMaxMB;
  /// Gets or sets the min dynamic memory for the vm.
  final int? dynamicMemoryMinMB;
  /// Gets highly available property.
  final String? isHighlyAvailable;
  /// Gets or sets a value indicating whether to enable processor compatibility mode for live migration of VMs.
  final String? limitCpuForMigration;
  /// MemoryMB is the size of a virtual machine's memory, in MB.
  final int? memoryMB;

  /// Creates a new [HardwareProfileResponse].
  /// [cpuCount] Gets or sets the number of vCPUs for the vm.
  /// [dynamicMemoryEnabled] Gets or sets a value indicating whether to enable dynamic memory or not.
  /// [dynamicMemoryMaxMB] Gets or sets the max dynamic memory for the vm.
  /// [dynamicMemoryMinMB] Gets or sets the min dynamic memory for the vm.
  /// [isHighlyAvailable] Gets highly available property.
  /// [limitCpuForMigration] Gets or sets a value indicating whether to enable processor compatibility mode for live migration of VMs.
  /// [memoryMB] MemoryMB is the size of a virtual machine's memory, in MB.
  HardwareProfileResponse({
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
      cpuCount: map['cpuCount'] == null ? null : map['cpuCount'] as int,
      dynamicMemoryEnabled: map['dynamicMemoryEnabled'] == null ? null : map['dynamicMemoryEnabled'] as String,
      dynamicMemoryMaxMB: map['dynamicMemoryMaxMB'] == null ? null : map['dynamicMemoryMaxMB'] as int,
      dynamicMemoryMinMB: map['dynamicMemoryMinMB'] == null ? null : map['dynamicMemoryMinMB'] as int,
      isHighlyAvailable: map['isHighlyAvailable'] == null ? null : map['isHighlyAvailable'] as String,
      limitCpuForMigration: map['limitCpuForMigration'] == null ? null : map['limitCpuForMigration'] as String,
      memoryMB: map['memoryMB'] == null ? null : map['memoryMB'] as int,
    );
  }
}

