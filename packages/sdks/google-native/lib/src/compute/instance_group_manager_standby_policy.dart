// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_standby_policy_mode.dart';

class InstanceGroupManagerStandbyPolicy {
  final pulumi.Input<int>? initialDelaySec;
  /// Defines behaviour of using instances from standby pool to resize MIG.
  final pulumi.Input<InstanceGroupManagerStandbyPolicyMode>? mode;

  /// Creates a new [InstanceGroupManagerStandbyPolicy].
  /// [initialDelaySec] Optional.
  /// [mode] Defines behaviour of using instances from standby pool to resize MIG.
  const InstanceGroupManagerStandbyPolicy({
    this.initialDelaySec,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialDelaySec': ?initialDelaySec,
      'mode': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerStandbyPolicyMode, String>(mode, (value) => value.wireValue),
    };
  }

  factory InstanceGroupManagerStandbyPolicy.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStandbyPolicy(
      initialDelaySec: (() { final guardedValue = map['initialDelaySec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerStandbyPolicyMode.fromValue(guardedValue as String)); })(),
    );
  }
}

