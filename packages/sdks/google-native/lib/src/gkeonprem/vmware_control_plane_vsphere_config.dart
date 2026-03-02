// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies control plane node config.
class VmwareControlPlaneVsphereConfig {
  /// The Vsphere datastore used by the control plane Node.
  final pulumi.Input<String>? datastore;
  /// The Vsphere storage policy used by the control plane Node.
  final pulumi.Input<String>? storagePolicyName;

  /// Creates a new [VmwareControlPlaneVsphereConfig].
  /// [datastore] The Vsphere datastore used by the control plane Node.
  /// [storagePolicyName] The Vsphere storage policy used by the control plane Node.
  VmwareControlPlaneVsphereConfig({
    this.datastore,
    this.storagePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastore': ?datastore,
      'storagePolicyName': ?storagePolicyName,
    };
  }

  factory VmwareControlPlaneVsphereConfig.fromMap(Map<String, dynamic> map) {
    return VmwareControlPlaneVsphereConfig(
      datastore: map['datastore'] == null ? null : (map['datastore']! as String).input(),
      storagePolicyName: map['storagePolicyName'] == null ? null : (map['storagePolicyName']! as String).input(),
    );
  }
}

