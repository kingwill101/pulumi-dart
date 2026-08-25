// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceMachineConfig {
  /// The number of CPU's in the VM instance.
  final pulumi.Input<int> cpuCount;
  /// Machine type of the VM instance.
  /// E.g. "n2-highmem-4", "n2-highmem-8", "c4a-highmem-4-lssd".
  /// 'cpu_count' must match the number of vCPUs in the machine type.
  final pulumi.Input<String> machineType;

  /// Creates a new [GetInstanceMachineConfig].
  /// [cpuCount] The number of CPU's in the VM instance.
  /// [machineType] Machine type of the VM instance.
  const GetInstanceMachineConfig({
    required this.cpuCount,
    required this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
      'machineType': machineType,
    };
  }

  factory GetInstanceMachineConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceMachineConfig(
      cpuCount: pulumi.Input.fromValue((map['cpuCount'] as num).toInt()),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
    );
  }
}
