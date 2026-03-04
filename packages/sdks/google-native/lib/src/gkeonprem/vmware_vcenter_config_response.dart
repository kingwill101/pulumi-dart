// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configuration for the VMware VCenter for the user cluster.
class VmwareVCenterConfigResponse {
  /// The vCenter IP address.
  final pulumi.Input<String> address;

  /// Contains the vCenter CA certificate public key for SSL verification.
  final pulumi.Input<String> caCertData;

  /// The name of the vCenter cluster for the user cluster.
  final pulumi.Input<String> cluster;

  /// The name of the vCenter datacenter for the user cluster.
  final pulumi.Input<String> datacenter;

  /// The name of the vCenter datastore for the user cluster.
  final pulumi.Input<String> datastore;

  /// The name of the vCenter folder for the user cluster.
  final pulumi.Input<String> folder;

  /// The name of the vCenter resource pool for the user cluster.
  final pulumi.Input<String> resourcePool;

  /// The name of the vCenter storage policy for the user cluster.
  final pulumi.Input<String> storagePolicyName;

  /// Creates a new [VmwareVCenterConfigResponse].
  /// [address] The vCenter IP address.
  /// [caCertData] Contains the vCenter CA certificate public key for SSL verification.
  /// [cluster] The name of the vCenter cluster for the user cluster.
  /// [datacenter] The name of the vCenter datacenter for the user cluster.
  /// [datastore] The name of the vCenter datastore for the user cluster.
  /// [folder] The name of the vCenter folder for the user cluster.
  /// [resourcePool] The name of the vCenter resource pool for the user cluster.
  /// [storagePolicyName] The name of the vCenter storage policy for the user cluster.
  VmwareVCenterConfigResponse({
    required this.address,
    required this.caCertData,
    required this.cluster,
    required this.datacenter,
    required this.datastore,
    required this.folder,
    required this.resourcePool,
    required this.storagePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'caCertData': caCertData,
      'cluster': cluster,
      'datacenter': datacenter,
      'datastore': datastore,
      'folder': folder,
      'resourcePool': resourcePool,
      'storagePolicyName': storagePolicyName,
    };
  }

  factory VmwareVCenterConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareVCenterConfigResponse(
      address: pulumi.Input.fromValue(map['address'] as String),
      caCertData: pulumi.Input.fromValue(map['caCertData'] as String),
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      datacenter: pulumi.Input.fromValue(map['datacenter'] as String),
      datastore: pulumi.Input.fromValue(map['datastore'] as String),
      folder: pulumi.Input.fromValue(map['folder'] as String),
      resourcePool: pulumi.Input.fromValue(map['resourcePool'] as String),
      storagePolicyName: pulumi.Input.fromValue(
        map['storagePolicyName'] as String,
      ),
    );
  }
}
