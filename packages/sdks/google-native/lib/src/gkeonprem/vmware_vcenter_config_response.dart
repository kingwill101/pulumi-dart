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
      address: (map['address'] as String).input(),
      caCertData: (map['caCertData'] as String).input(),
      cluster: (map['cluster'] as String).input(),
      datacenter: (map['datacenter'] as String).input(),
      datastore: (map['datastore'] as String).input(),
      folder: (map['folder'] as String).input(),
      resourcePool: (map['resourcePool'] as String).input(),
      storagePolicyName: (map['storagePolicyName'] as String).input(),
    );
  }
}

