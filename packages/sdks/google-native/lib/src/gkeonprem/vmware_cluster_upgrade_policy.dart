// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VmwareClusterUpgradePolicy defines the cluster upgrade policy.
class VmwareClusterUpgradePolicy {
  /// Controls whether the upgrade applies to the control plane only.
  final pulumi.Input<bool>? controlPlaneOnly;

  /// Creates a new [VmwareClusterUpgradePolicy].
  /// [controlPlaneOnly] Controls whether the upgrade applies to the control plane only.
  const VmwareClusterUpgradePolicy({
    this.controlPlaneOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneOnly': ?controlPlaneOnly,
    };
  }

  factory VmwareClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return VmwareClusterUpgradePolicy(
      controlPlaneOnly: (() { final guardedValue = map['controlPlaneOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
