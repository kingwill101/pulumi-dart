// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceMachineConfig {
  /// The number of CPUs in the VM instance. For read pool instances, this
  /// value is applied to the instances in the pool and is not replaced by
  /// a fixed default.
  final pulumi.Input<int> cpuCount;
  /// Machine type of the VM instance.
  /// E.g. "n2-highmem-4", "n2-highmem-8", "c4a-highmem-4-lssd".
  /// 'cpu_count' must match the number of vCPUs in the machine type.
  final pulumi.Input<String> machineType;

  /// Creates a new [GetInstanceMachineConfig].
  /// [cpuCount] The number of CPUs in the VM instance. For read pool instances, this
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
      cpuCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['cpuCount'])),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
    );
  }
}
