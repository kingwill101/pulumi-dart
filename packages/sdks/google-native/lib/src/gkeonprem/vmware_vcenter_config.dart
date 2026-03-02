// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configuration for the VMware VCenter for the user cluster.
class VmwareVCenterConfig {
  /// Contains the vCenter CA certificate public key for SSL verification.
  final pulumi.Input<String>? caCertData;
  /// The name of the vCenter cluster for the user cluster.
  final pulumi.Input<String>? cluster;
  /// The name of the vCenter datacenter for the user cluster.
  final pulumi.Input<String>? datacenter;
  /// The name of the vCenter datastore for the user cluster.
  final pulumi.Input<String>? datastore;
  /// The name of the vCenter folder for the user cluster.
  final pulumi.Input<String>? folder;
  /// The name of the vCenter resource pool for the user cluster.
  final pulumi.Input<String>? resourcePool;
  /// The name of the vCenter storage policy for the user cluster.
  final pulumi.Input<String>? storagePolicyName;

  /// Creates a new [VmwareVCenterConfig].
  /// [caCertData] Contains the vCenter CA certificate public key for SSL verification.
  /// [cluster] The name of the vCenter cluster for the user cluster.
  /// [datacenter] The name of the vCenter datacenter for the user cluster.
  /// [datastore] The name of the vCenter datastore for the user cluster.
  /// [folder] The name of the vCenter folder for the user cluster.
  /// [resourcePool] The name of the vCenter resource pool for the user cluster.
  /// [storagePolicyName] The name of the vCenter storage policy for the user cluster.
  VmwareVCenterConfig({
    this.caCertData,
    this.cluster,
    this.datacenter,
    this.datastore,
    this.folder,
    this.resourcePool,
    this.storagePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertData': ?caCertData,
      'cluster': ?cluster,
      'datacenter': ?datacenter,
      'datastore': ?datastore,
      'folder': ?folder,
      'resourcePool': ?resourcePool,
      'storagePolicyName': ?storagePolicyName,
    };
  }

  factory VmwareVCenterConfig.fromMap(Map<String, dynamic> map) {
    return VmwareVCenterConfig(
      caCertData: map['caCertData'] == null ? null : (map['caCertData']! as String).input(),
      cluster: map['cluster'] == null ? null : (map['cluster']! as String).input(),
      datacenter: map['datacenter'] == null ? null : (map['datacenter']! as String).input(),
      datastore: map['datastore'] == null ? null : (map['datastore']! as String).input(),
      folder: map['folder'] == null ? null : (map['folder']! as String).input(),
      resourcePool: map['resourcePool'] == null ? null : (map['resourcePool']! as String).input(),
      storagePolicyName: map['storagePolicyName'] == null ? null : (map['storagePolicyName']! as String).input(),
    );
  }
}

