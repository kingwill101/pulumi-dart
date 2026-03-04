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
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      caCertData: (() {
        final guardedValue = map['caCertData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cluster: (() {
        final guardedValue = map['cluster'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataDisk: (() {
        final guardedValue = map['dataDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      datacenter: (() {
        final guardedValue = map['datacenter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      datastore: (() {
        final guardedValue = map['datastore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      folder: (() {
        final guardedValue = map['folder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourcePool: (() {
        final guardedValue = map['resourcePool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storagePolicyName: (() {
        final guardedValue = map['storagePolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
