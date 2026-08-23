// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterControlPlaneNodeVsphereConfig {
  /// The Vsphere datastore used by the Control Plane Node.
  final pulumi.Input<String>? datastore;
  /// The Vsphere storage policy used by the control plane Node.
  final pulumi.Input<String>? storagePolicyName;

  /// Creates a new [VMwareClusterControlPlaneNodeVsphereConfig].
  /// [datastore] The Vsphere datastore used by the Control Plane Node.
  /// [storagePolicyName] The Vsphere storage policy used by the control plane Node.
  const VMwareClusterControlPlaneNodeVsphereConfig({
    this.datastore,
    this.storagePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastore': ?datastore,
      'storagePolicyName': ?storagePolicyName,
    };
  }

  factory VMwareClusterControlPlaneNodeVsphereConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterControlPlaneNodeVsphereConfig(
      datastore: (() { final guardedValue = map['datastore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePolicyName: (() { final guardedValue = map['storagePolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
