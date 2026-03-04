// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerStandbyPolicy {
  /// Specifies the number of seconds that the MIG should wait to suspend or stop a VM after that VM was created. The initial delay gives the initialization script the time to prepare your VM for a quick scale out. The value of initial delay must be between 0 and 3600 seconds. The default value is 0.
  final pulumi.Input<int>? initialDelaySec;

  /// Defines how a MIG resumes or starts VMs from a standby pool when the group scales out. Valid options are: `MANUAL`, `SCALE_OUT_POOL`. If `MANUAL`(default), you have full control over which VMs are stopped and suspended in the MIG. If `SCALE_OUT_POOL`, the MIG uses the VMs from the standby pools to accelerate the scale out by resuming or starting them and then automatically replenishes the standby pool with new VMs to maintain the target sizes.
  /// - - -
  final pulumi.Input<String>? mode;

  /// Creates a new [InstanceGroupManagerStandbyPolicy].
  /// [initialDelaySec] Specifies the number of seconds that the MIG should wait to suspend or stop a VM after that VM was created. The initial delay gives the initialization script the time to prepare your VM for a quick scale out. The value of initial delay must be between 0 and 3600 seconds. The default value is 0.
  /// [mode] Defines how a MIG resumes or starts VMs from a standby pool when the group scales out. Valid options are: `MANUAL`, `SCALE_OUT_POOL`. If `MANUAL`(default), you have full control over which VMs are stopped and suspended in the MIG. If `SCALE_OUT_POOL`, the MIG uses the VMs from the standby pools to accelerate the scale out by resuming or starting them and then automatically replenishes the standby pool with new VMs to maintain the target sizes.
  InstanceGroupManagerStandbyPolicy({this.initialDelaySec, this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialDelaySec': ?initialDelaySec,
      'mode': ?mode,
    };
  }

  factory InstanceGroupManagerStandbyPolicy.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStandbyPolicy(
      initialDelaySec: (() {
        final guardedValue = map['initialDelaySec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
