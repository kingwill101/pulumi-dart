// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies vSphere CSI components deployment config in the VMware user cluster.
class VmwareStorageConfig {
  /// Whether or not to deploy vSphere CSI components in the VMware user cluster. Enabled by default.
  final pulumi.Input<bool>? vsphereCsiDisabled;

  /// Creates a new [VmwareStorageConfig].
  /// [vsphereCsiDisabled] Whether or not to deploy vSphere CSI components in the VMware user cluster. Enabled by default.
  const VmwareStorageConfig({
    this.vsphereCsiDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vsphereCsiDisabled': ?vsphereCsiDisabled,
    };
  }

  factory VmwareStorageConfig.fromMap(Map<String, dynamic> map) {
    return VmwareStorageConfig(
      vsphereCsiDisabled: (() { final guardedValue = map['vsphereCsiDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

