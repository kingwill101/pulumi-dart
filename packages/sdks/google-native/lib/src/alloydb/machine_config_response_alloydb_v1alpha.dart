// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MachineConfig describes the configuration of a machine.
class MachineConfigResponseAlloydbV1alpha {
  /// The number of CPU's in the VM instance.
  final pulumi.Input<int> cpuCount;

  /// Creates a new [MachineConfigResponseAlloydbV1alpha].
  /// [cpuCount] The number of CPU's in the VM instance.
  const MachineConfigResponseAlloydbV1alpha({
    required this.cpuCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
    };
  }

  factory MachineConfigResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return MachineConfigResponseAlloydbV1alpha(
      cpuCount: pulumi.Input.fromValue(map['cpuCount'] as int),
    );
  }
}
