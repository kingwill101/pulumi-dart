// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareAdminClusterVcenter {
  /// The vCenter IP address.
  final pulumi.Input<String>? address;
  /// Contains the vCenter CA certificate public key for SSL verification.
  final pulumi.Input<String>? caCertData;
  /// The name of the vCenter cluster for the admin cluster.
  final pulumi.Input<String>? cluster;
  /// The name of the virtual machine disk (VMDK) for the admin cluster.
  final pulumi.Input<String>? dataDisk;
  /// The name of the vCenter datacenter for the admin cluster.
  final pulumi.Input<String>? datacenter;
  /// The name of the vCenter datastore for the admin cluster.
  final pulumi.Input<String>? datastore;
  /// The name of the vCenter folder for the admin cluster.
  final pulumi.Input<String>? folder;
  /// The name of the vCenter resource pool for the admin cluster.
  final pulumi.Input<String>? resourcePool;
  /// The name of the vCenter storage policy for the user cluster.
  final pulumi.Input<String>? storagePolicyName;

  /// Creates a new [VmwareAdminClusterVcenter].
  /// [address] The vCenter IP address.
  /// [caCertData] Contains the vCenter CA certificate public key for SSL verification.
  /// [cluster] The name of the vCenter cluster for the admin cluster.
  /// [dataDisk] The name of the virtual machine disk (VMDK) for the admin cluster.
  /// [datacenter] The name of the vCenter datacenter for the admin cluster.
  /// [datastore] The name of the vCenter datastore for the admin cluster.
  /// [folder] The name of the vCenter folder for the admin cluster.
  /// [resourcePool] The name of the vCenter resource pool for the admin cluster.
  /// [storagePolicyName] The name of the vCenter storage policy for the user cluster.
  VmwareAdminClusterVcenter({
    this.address,
    this.caCertData,
    this.cluster,
    this.dataDisk,
    this.datacenter,
    this.datastore,
    this.folder,
    this.resourcePool,
    this.storagePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'caCertData': ?caCertData,
      'cluster': ?cluster,
      'dataDisk': ?dataDisk,
      'datacenter': ?datacenter,
      'datastore': ?datastore,
      'folder': ?folder,
      'resourcePool': ?resourcePool,
      'storagePolicyName': ?storagePolicyName,
    };
  }

  factory VmwareAdminClusterVcenter.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterVcenter(
      address: map['address'] == null ? null : (map['address']! as String).input(),
      caCertData: map['caCertData'] == null ? null : (map['caCertData']! as String).input(),
      cluster: map['cluster'] == null ? null : (map['cluster']! as String).input(),
      dataDisk: map['dataDisk'] == null ? null : (map['dataDisk']! as String).input(),
      datacenter: map['datacenter'] == null ? null : (map['datacenter']! as String).input(),
      datastore: map['datastore'] == null ? null : (map['datastore']! as String).input(),
      folder: map['folder'] == null ? null : (map['folder']! as String).input(),
      resourcePool: map['resourcePool'] == null ? null : (map['resourcePool']! as String).input(),
      storagePolicyName: map['storagePolicyName'] == null ? null : (map['storagePolicyName']! as String).input(),
    );
  }
}

