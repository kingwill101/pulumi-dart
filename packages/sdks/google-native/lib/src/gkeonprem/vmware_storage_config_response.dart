// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies vSphere CSI components deployment config in the VMware user cluster.
class VmwareStorageConfigResponse {
  /// Whether or not to deploy vSphere CSI components in the VMware user cluster. Enabled by default.
  final pulumi.Input<bool> vsphereCsiDisabled;

  /// Creates a new [VmwareStorageConfigResponse].
  /// [vsphereCsiDisabled] Whether or not to deploy vSphere CSI components in the VMware user cluster. Enabled by default.
  const VmwareStorageConfigResponse({
    required this.vsphereCsiDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vsphereCsiDisabled': vsphereCsiDisabled,
    };
  }

  factory VmwareStorageConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareStorageConfigResponse(
      vsphereCsiDisabled: pulumi.Input.fromValue(map['vsphereCsiDisabled'] as bool),
    );
  }
}
