// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies control plane node config.
class VmwareControlPlaneVsphereConfigResponse {
  /// The Vsphere datastore used by the control plane Node.
  final pulumi.Input<String> datastore;
  /// The Vsphere storage policy used by the control plane Node.
  final pulumi.Input<String> storagePolicyName;

  /// Creates a new [VmwareControlPlaneVsphereConfigResponse].
  /// [datastore] The Vsphere datastore used by the control plane Node.
  /// [storagePolicyName] The Vsphere storage policy used by the control plane Node.
  VmwareControlPlaneVsphereConfigResponse({
    required this.datastore,
    required this.storagePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastore': datastore,
      'storagePolicyName': storagePolicyName,
    };
  }

  factory VmwareControlPlaneVsphereConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareControlPlaneVsphereConfigResponse(
      datastore: pulumi.Input.fromValue(map['datastore'] as String),
      storagePolicyName: pulumi.Input.fromValue(map['storagePolicyName'] as String),
    );
  }
}

