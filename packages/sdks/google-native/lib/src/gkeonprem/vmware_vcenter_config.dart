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
