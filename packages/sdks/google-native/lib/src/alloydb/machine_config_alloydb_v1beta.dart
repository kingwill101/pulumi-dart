// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MachineConfig describes the configuration of a machine.
class MachineConfigAlloydbV1beta {
  /// The number of CPU's in the VM instance.
  final pulumi.Input<int>? cpuCount;

  /// Creates a new [MachineConfigAlloydbV1beta].
  /// [cpuCount] The number of CPU's in the VM instance.
  MachineConfigAlloydbV1beta({
    this.cpuCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': ?cpuCount,
    };
  }

  factory MachineConfigAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return MachineConfigAlloydbV1beta(
      cpuCount: map['cpuCount'] == null ? null : (map['cpuCount'] as int).input(),
    );
  }
}

