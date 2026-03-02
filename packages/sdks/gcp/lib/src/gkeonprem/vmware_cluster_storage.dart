// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterStorage {
  /// Whether or not to deploy vSphere CSI components in the VMware User Cluster.
  /// Enabled by default.
  final pulumi.Input<bool> vsphereCsiDisabled;

  /// Creates a new [VMwareClusterStorage].
  /// [vsphereCsiDisabled] Whether or not to deploy vSphere CSI components in the VMware User Cluster.
  VMwareClusterStorage({
    required this.vsphereCsiDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vsphereCsiDisabled': vsphereCsiDisabled,
    };
  }

  factory VMwareClusterStorage.fromMap(Map<String, dynamic> map) {
    return VMwareClusterStorage(
      vsphereCsiDisabled: (map['vsphereCsiDisabled'] as bool).input(),
    );
  }
}

