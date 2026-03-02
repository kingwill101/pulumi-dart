// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IPConfigDetailsResponse {
  final pulumi.Input<String>? ipAddressType;
  final pulumi.Input<bool>? isPrimary;
  final pulumi.Input<bool>? isSeletedForFailover;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? recoveryIPAddressType;
  final pulumi.Input<List<String>>? recoveryLBBackendAddressPoolIds;
  final pulumi.Input<String>? recoveryPublicIPAddressId;
  final pulumi.Input<String>? recoveryStaticIPAddress;
  final pulumi.Input<String>? recoverySubnetName;
  final pulumi.Input<String>? staticIPAddress;
  final pulumi.Input<String>? subnetName;
  final pulumi.Input<List<String>>? tfoLBBackendAddressPoolIds;
  final pulumi.Input<String>? tfoPublicIPAddressId;
  final pulumi.Input<String>? tfoStaticIPAddress;
  final pulumi.Input<String>? tfoSubnetName;

  /// Creates a new [IPConfigDetailsResponse].
  /// [ipAddressType] Optional.
  /// [isPrimary] Optional.
  /// [isSeletedForFailover] Optional.
  /// [name] Optional.
  /// [recoveryIPAddressType] Optional.
  /// [recoveryLBBackendAddressPoolIds] Optional.
  /// [recoveryPublicIPAddressId] Optional.
  /// [recoveryStaticIPAddress] Optional.
  /// [recoverySubnetName] Optional.
  /// [staticIPAddress] Optional.
  /// [subnetName] Optional.
  /// [tfoLBBackendAddressPoolIds] Optional.
  /// [tfoPublicIPAddressId] Optional.
  /// [tfoStaticIPAddress] Optional.
  /// [tfoSubnetName] Optional.
  IPConfigDetailsResponse({
    this.ipAddressType,
    this.isPrimary,
    this.isSeletedForFailover,
    this.name,
    this.recoveryIPAddressType,
    this.recoveryLBBackendAddressPoolIds,
    this.recoveryPublicIPAddressId,
    this.recoveryStaticIPAddress,
    this.recoverySubnetName,
    this.staticIPAddress,
    this.subnetName,
    this.tfoLBBackendAddressPoolIds,
    this.tfoPublicIPAddressId,
    this.tfoStaticIPAddress,
    this.tfoSubnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ?ipAddressType,
      'isPrimary': ?isPrimary,
      'isSeletedForFailover': ?isSeletedForFailover,
      'name': ?name,
      'recoveryIPAddressType': ?recoveryIPAddressType,
      'recoveryLBBackendAddressPoolIds': ?recoveryLBBackendAddressPoolIds,
      'recoveryPublicIPAddressId': ?recoveryPublicIPAddressId,
      'recoveryStaticIPAddress': ?recoveryStaticIPAddress,
      'recoverySubnetName': ?recoverySubnetName,
      'staticIPAddress': ?staticIPAddress,
      'subnetName': ?subnetName,
      'tfoLBBackendAddressPoolIds': ?tfoLBBackendAddressPoolIds,
      'tfoPublicIPAddressId': ?tfoPublicIPAddressId,
      'tfoStaticIPAddress': ?tfoStaticIPAddress,
      'tfoSubnetName': ?tfoSubnetName,
    };
  }

  factory IPConfigDetailsResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigDetailsResponse(
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType'] as String).input(),
      isPrimary: map['isPrimary'] == null ? null : (map['isPrimary'] as bool).input(),
      isSeletedForFailover: map['isSeletedForFailover'] == null ? null : (map['isSeletedForFailover'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      recoveryIPAddressType: map['recoveryIPAddressType'] == null ? null : (map['recoveryIPAddressType'] as String).input(),
      recoveryLBBackendAddressPoolIds: map['recoveryLBBackendAddressPoolIds'] == null ? null : ((map['recoveryLBBackendAddressPoolIds'] as List).cast<String>()).input(),
      recoveryPublicIPAddressId: map['recoveryPublicIPAddressId'] == null ? null : (map['recoveryPublicIPAddressId'] as String).input(),
      recoveryStaticIPAddress: map['recoveryStaticIPAddress'] == null ? null : (map['recoveryStaticIPAddress'] as String).input(),
      recoverySubnetName: map['recoverySubnetName'] == null ? null : (map['recoverySubnetName'] as String).input(),
      staticIPAddress: map['staticIPAddress'] == null ? null : (map['staticIPAddress'] as String).input(),
      subnetName: map['subnetName'] == null ? null : (map['subnetName'] as String).input(),
      tfoLBBackendAddressPoolIds: map['tfoLBBackendAddressPoolIds'] == null ? null : ((map['tfoLBBackendAddressPoolIds'] as List).cast<String>()).input(),
      tfoPublicIPAddressId: map['tfoPublicIPAddressId'] == null ? null : (map['tfoPublicIPAddressId'] as String).input(),
      tfoStaticIPAddress: map['tfoStaticIPAddress'] == null ? null : (map['tfoStaticIPAddress'] as String).input(),
      tfoSubnetName: map['tfoSubnetName'] == null ? null : (map['tfoSubnetName'] as String).input(),
    );
  }
}

