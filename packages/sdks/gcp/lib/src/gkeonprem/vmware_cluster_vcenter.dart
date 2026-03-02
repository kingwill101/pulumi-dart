// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterVcenter {
  /// (Output)
  /// The vCenter IP address.
  final pulumi.Input<String>? address;
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

  /// Creates a new [VMwareClusterVcenter].
  /// [address] (Output)
  /// [caCertData] Contains the vCenter CA certificate public key for SSL verification.
  /// [cluster] The name of the vCenter cluster for the user cluster.
  /// [datacenter] The name of the vCenter datacenter for the user cluster.
  /// [datastore] The name of the vCenter datastore for the user cluster.
  /// [folder] The name of the vCenter folder for the user cluster.
  /// [resourcePool] The name of the vCenter resource pool for the user cluster.
  /// [storagePolicyName] The name of the vCenter storage policy for the user cluster.
  VMwareClusterVcenter({
    this.address,
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
      'address': ?address,
      'caCertData': ?caCertData,
      'cluster': ?cluster,
      'datacenter': ?datacenter,
      'datastore': ?datastore,
      'folder': ?folder,
      'resourcePool': ?resourcePool,
      'storagePolicyName': ?storagePolicyName,
    };
  }

  factory VMwareClusterVcenter.fromMap(Map<String, dynamic> map) {
    return VMwareClusterVcenter(
      address: map['address'] == null ? null : (map['address']! as String).input(),
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

