// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_standby_policy_mode_compute_beta.dart';

class InstanceGroupManagerStandbyPolicyComputeBeta {
  final pulumi.Input<int>? initialDelaySec;
  /// Defines behaviour of using instances from standby pool to resize MIG.
  final pulumi.Input<InstanceGroupManagerStandbyPolicyModeComputeBeta>? mode;

  /// Creates a new [InstanceGroupManagerStandbyPolicyComputeBeta].
  /// [initialDelaySec] Optional.
  /// [mode] Defines behaviour of using instances from standby pool to resize MIG.
  const InstanceGroupManagerStandbyPolicyComputeBeta({
    this.initialDelaySec,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialDelaySec': ?initialDelaySec,
      'mode': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerStandbyPolicyModeComputeBeta, String>(mode, (value) => value.wireValue),
    };
  }

  factory InstanceGroupManagerStandbyPolicyComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStandbyPolicyComputeBeta(
      initialDelaySec: (() { final guardedValue = map['initialDelaySec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceGroupManagerStandbyPolicyModeComputeBeta.fromValue(guardedValue as String)); })(),
    );
  }
}
