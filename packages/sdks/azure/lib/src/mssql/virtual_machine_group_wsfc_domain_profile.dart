// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachineGroupWsfcDomainProfile {
  /// The account name used for creating cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterBootstrapAccountName;
  /// The account name used for operating cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? clusterOperatorAccountName;
  /// The subnet type of the SQL Virtual Machine cluster. Possible values are `MultiSubnet` and `SingleSubnet`. Changing this forces a new resource to be created.
  final pulumi.Input<String> clusterSubnetType;
  /// The fully qualified name of the domain. Changing this forces a new resource to be created.
  final pulumi.Input<String> fqdn;
  /// The organizational Unit path in which the nodes and cluster will be present. Changing this forces a new resource to be created.
  final pulumi.Input<String>? organizationalUnitPath;
  /// The account name under which SQL service will run on all participating SQL virtual machines in the cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sqlServiceAccountName;
  /// The primary key of the Storage Account.
  final pulumi.Input<String>? storageAccountPrimaryKey;
  /// The SAS URL to the Storage Container of the witness storage account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountUrl;

  /// Creates a new [VirtualMachineGroupWsfcDomainProfile].
  /// [clusterBootstrapAccountName] The account name used for creating cluster. Changing this forces a new resource to be created.
  /// [clusterOperatorAccountName] The account name used for operating cluster. Changing this forces a new resource to be created.
  /// [clusterSubnetType] The subnet type of the SQL Virtual Machine cluster. Possible values are `MultiSubnet` and `SingleSubnet`. Changing this forces a new resource to be created.
  /// [fqdn] The fully qualified name of the domain. Changing this forces a new resource to be created.
  /// [organizationalUnitPath] The organizational Unit path in which the nodes and cluster will be present. Changing this forces a new resource to be created.
  /// [sqlServiceAccountName] The account name under which SQL service will run on all participating SQL virtual machines in the cluster. Changing this forces a new resource to be created.
  /// [storageAccountPrimaryKey] The primary key of the Storage Account.
  /// [storageAccountUrl] The SAS URL to the Storage Container of the witness storage account. Changing this forces a new resource to be created.
  VirtualMachineGroupWsfcDomainProfile({
    this.clusterBootstrapAccountName,
    this.clusterOperatorAccountName,
    required this.clusterSubnetType,
    required this.fqdn,
    this.organizationalUnitPath,
    this.sqlServiceAccountName,
    this.storageAccountPrimaryKey,
    this.storageAccountUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterBootstrapAccountName': ?clusterBootstrapAccountName,
      'clusterOperatorAccountName': ?clusterOperatorAccountName,
      'clusterSubnetType': clusterSubnetType,
      'fqdn': fqdn,
      'organizationalUnitPath': ?organizationalUnitPath,
      'sqlServiceAccountName': ?sqlServiceAccountName,
      'storageAccountPrimaryKey': ?storageAccountPrimaryKey,
      'storageAccountUrl': ?storageAccountUrl,
    };
  }

  factory VirtualMachineGroupWsfcDomainProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineGroupWsfcDomainProfile(
      clusterBootstrapAccountName: map['clusterBootstrapAccountName'] == null ? null : (map['clusterBootstrapAccountName'] as String).input(),
      clusterOperatorAccountName: map['clusterOperatorAccountName'] == null ? null : (map['clusterOperatorAccountName'] as String).input(),
      clusterSubnetType: (map['clusterSubnetType'] as String).input(),
      fqdn: (map['fqdn'] as String).input(),
      organizationalUnitPath: map['organizationalUnitPath'] == null ? null : (map['organizationalUnitPath'] as String).input(),
      sqlServiceAccountName: map['sqlServiceAccountName'] == null ? null : (map['sqlServiceAccountName'] as String).input(),
      storageAccountPrimaryKey: map['storageAccountPrimaryKey'] == null ? null : (map['storageAccountPrimaryKey'] as String).input(),
      storageAccountUrl: map['storageAccountUrl'] == null ? null : (map['storageAccountUrl'] as String).input(),
    );
  }
}

