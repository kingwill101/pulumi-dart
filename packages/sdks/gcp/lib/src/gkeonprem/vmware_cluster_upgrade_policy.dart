// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterUpgradePolicy {
  /// Controls whether the upgrade applies to the control plane only.
  final pulumi.Input<bool>? controlPlaneOnly;

  /// Creates a new [VMwareClusterUpgradePolicy].
  /// [controlPlaneOnly] Controls whether the upgrade applies to the control plane only.
  VMwareClusterUpgradePolicy({
    this.controlPlaneOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneOnly': ?controlPlaneOnly,
    };
  }

  factory VMwareClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return VMwareClusterUpgradePolicy(
      controlPlaneOnly: map['controlPlaneOnly'] == null ? null : (map['controlPlaneOnly'] as bool).input(),
    );
  }
}

