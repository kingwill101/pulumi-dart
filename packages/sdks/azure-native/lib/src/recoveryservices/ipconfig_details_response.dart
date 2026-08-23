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
  const IPConfigDetailsResponse({
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
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPrimary: (() { final guardedValue = map['isPrimary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSeletedForFailover: (() { final guardedValue = map['isSeletedForFailover']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryIPAddressType: (() { final guardedValue = map['recoveryIPAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryLBBackendAddressPoolIds: (() { final guardedValue = map['recoveryLBBackendAddressPoolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      recoveryPublicIPAddressId: (() { final guardedValue = map['recoveryPublicIPAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryStaticIPAddress: (() { final guardedValue = map['recoveryStaticIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoverySubnetName: (() { final guardedValue = map['recoverySubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticIPAddress: (() { final guardedValue = map['staticIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetName: (() { final guardedValue = map['subnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tfoLBBackendAddressPoolIds: (() { final guardedValue = map['tfoLBBackendAddressPoolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tfoPublicIPAddressId: (() { final guardedValue = map['tfoPublicIPAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tfoStaticIPAddress: (() { final guardedValue = map['tfoStaticIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tfoSubnetName: (() { final guardedValue = map['tfoSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
