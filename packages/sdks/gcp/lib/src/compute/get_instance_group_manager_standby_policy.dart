// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGroupManagerStandbyPolicy {
  /// Specifies the number of seconds that the MIG should wait to suspend or stop a VM after that VM was created. The initial delay gives the initialization script the time to prepare your VM for a quick scale out. The value of initial delay must be between 0 and 3600 seconds. The default value is 0.
  final pulumi.Input<int> initialDelaySec;
  /// Defines how a MIG resumes or starts VMs from a standby pool when the group scales out. The default mode is "MANUAL".
  final pulumi.Input<String> mode;

  /// Creates a new [GetInstanceGroupManagerStandbyPolicy].
  /// [initialDelaySec] Specifies the number of seconds that the MIG should wait to suspend or stop a VM after that VM was created. The initial delay gives the initialization script the time to prepare your VM for a quick scale out. The value of initial delay must be between 0 and 3600 seconds. The default value is 0.
  /// [mode] Defines how a MIG resumes or starts VMs from a standby pool when the group scales out. The default mode is "MANUAL".
  const GetInstanceGroupManagerStandbyPolicy({
    required this.initialDelaySec,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialDelaySec': initialDelaySec,
      'mode': mode,
    };
  }

  factory GetInstanceGroupManagerStandbyPolicy.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerStandbyPolicy(
      initialDelaySec: pulumi.Input.fromValue(map['initialDelaySec'] as int),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
