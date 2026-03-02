// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MachineConfig describes the configuration of a machine.
class MachineConfig {
  /// The number of CPU's in the VM instance.
  final pulumi.Input<int>? cpuCount;

  /// Creates a new [MachineConfig].
  /// [cpuCount] The number of CPU's in the VM instance.
  MachineConfig({
    this.cpuCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': ?cpuCount,
    };
  }

  factory MachineConfig.fromMap(Map<String, dynamic> map) {
    return MachineConfig(
      cpuCount: map['cpuCount'] == null ? null : (map['cpuCount']! as int).input(),
    );
  }
}

