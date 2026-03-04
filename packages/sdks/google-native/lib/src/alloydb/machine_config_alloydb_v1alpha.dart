// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MachineConfig describes the configuration of a machine.
class MachineConfigAlloydbV1alpha {
  /// The number of CPU's in the VM instance.
  final pulumi.Input<int>? cpuCount;

  /// Creates a new [MachineConfigAlloydbV1alpha].
  /// [cpuCount] The number of CPU's in the VM instance.
  MachineConfigAlloydbV1alpha({this.cpuCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpuCount': ?cpuCount};
  }

  factory MachineConfigAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return MachineConfigAlloydbV1alpha(
      cpuCount: (() {
        final guardedValue = map['cpuCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
