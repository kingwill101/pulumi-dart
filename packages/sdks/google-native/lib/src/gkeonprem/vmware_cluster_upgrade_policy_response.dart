// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VmwareClusterUpgradePolicy defines the cluster upgrade policy.
class VmwareClusterUpgradePolicyResponse {
  /// Controls whether the upgrade applies to the control plane only.
  final pulumi.Input<bool> controlPlaneOnly;

  /// Creates a new [VmwareClusterUpgradePolicyResponse].
  /// [controlPlaneOnly] Controls whether the upgrade applies to the control plane only.
  VmwareClusterUpgradePolicyResponse({
    required this.controlPlaneOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneOnly': controlPlaneOnly,
    };
  }

  factory VmwareClusterUpgradePolicyResponse.fromMap(Map<String, dynamic> map) {
    return VmwareClusterUpgradePolicyResponse(
      controlPlaneOnly: pulumi.Input.fromValue(map['controlPlaneOnly'] as bool),
    );
  }
}

