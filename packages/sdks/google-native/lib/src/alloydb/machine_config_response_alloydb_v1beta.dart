// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MachineConfig describes the configuration of a machine.
class MachineConfigResponseAlloydbV1beta {
  /// The number of CPU's in the VM instance.
  final pulumi.Input<int> cpuCount;

  /// Creates a new [MachineConfigResponseAlloydbV1beta].
  /// [cpuCount] The number of CPU's in the VM instance.
  MachineConfigResponseAlloydbV1beta({
    required this.cpuCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
    };
  }

  factory MachineConfigResponseAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return MachineConfigResponseAlloydbV1beta(
      cpuCount: (map['cpuCount'] as int).input(),
    );
  }
}

