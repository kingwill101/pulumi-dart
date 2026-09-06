// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMwareCbt NIC details.
class VMwareCbtNicDetailsResponse {
  /// A value indicating whether this is the primary NIC.
  final pulumi.Input<String?>? isPrimaryNic;
  /// A value indicating whether this NIC is selected for migration.
  final pulumi.Input<String?>? isSelectedForMigration;
  /// The NIC Id.
  final pulumi.Input<String> nicId;
  /// The source IP address.
  final pulumi.Input<String> sourceIPAddress;
  /// The source IP address type.
  final pulumi.Input<String> sourceIPAddressType;
  /// Source network Id.
  final pulumi.Input<String> sourceNetworkId;
  /// The target IP address.
  final pulumi.Input<String?>? targetIPAddress;
  /// The target IP address type.
  final pulumi.Input<String?>? targetIPAddressType;
  /// Target NIC name.
  final pulumi.Input<String?>? targetNicName;
  /// Target subnet name.
  final pulumi.Input<String?>? targetSubnetName;
  /// The test IP address.
  final pulumi.Input<String?>? testIPAddress;
  /// The test IP address type.
  final pulumi.Input<String?>? testIPAddressType;
  /// Source network Id.
  final pulumi.Input<String?>? testNetworkId;
  /// Test subnet name.
  final pulumi.Input<String?>? testSubnetName;

  /// Creates a new [VMwareCbtNicDetailsResponse].
  /// [isPrimaryNic] A value indicating whether this is the primary NIC.
  /// [isSelectedForMigration] A value indicating whether this NIC is selected for migration.
  /// [nicId] The NIC Id.
  /// [sourceIPAddress] The source IP address.
  /// [sourceIPAddressType] The source IP address type.
  /// [sourceNetworkId] Source network Id.
  /// [targetIPAddress] The target IP address.
  /// [targetIPAddressType] The target IP address type.
  /// [targetNicName] Target NIC name.
  /// [targetSubnetName] Target subnet name.
  /// [testIPAddress] The test IP address.
  /// [testIPAddressType] The test IP address type.
  /// [testNetworkId] Source network Id.
  /// [testSubnetName] Test subnet name.
  const VMwareCbtNicDetailsResponse({
    this.isPrimaryNic,
    this.isSelectedForMigration,
    required this.nicId,
    required this.sourceIPAddress,
    required this.sourceIPAddressType,
    required this.sourceNetworkId,
    this.targetIPAddress,
    this.targetIPAddressType,
    this.targetNicName,
    this.targetSubnetName,
    this.testIPAddress,
    this.testIPAddressType,
    this.testNetworkId,
    this.testSubnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPrimaryNic': ?isPrimaryNic,
      'isSelectedForMigration': ?isSelectedForMigration,
      'nicId': nicId,
      'sourceIPAddress': sourceIPAddress,
      'sourceIPAddressType': sourceIPAddressType,
      'sourceNetworkId': sourceNetworkId,
      'targetIPAddress': ?targetIPAddress,
      'targetIPAddressType': ?targetIPAddressType,
      'targetNicName': ?targetNicName,
      'targetSubnetName': ?targetSubnetName,
      'testIPAddress': ?testIPAddress,
      'testIPAddressType': ?testIPAddressType,
      'testNetworkId': ?testNetworkId,
      'testSubnetName': ?testSubnetName,
    };
  }

  factory VMwareCbtNicDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VMwareCbtNicDetailsResponse(
      isPrimaryNic: (() { final guardedValue = map['isPrimaryNic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSelectedForMigration: (() { final guardedValue = map['isSelectedForMigration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nicId: pulumi.Input.fromValue(map['nicId'] as String),
      sourceIPAddress: pulumi.Input.fromValue(map['sourceIPAddress'] as String),
      sourceIPAddressType: pulumi.Input.fromValue(map['sourceIPAddressType'] as String),
      sourceNetworkId: pulumi.Input.fromValue(map['sourceNetworkId'] as String),
      targetIPAddress: (() { final guardedValue = map['targetIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetIPAddressType: (() { final guardedValue = map['targetIPAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetNicName: (() { final guardedValue = map['targetNicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSubnetName: (() { final guardedValue = map['targetSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testIPAddress: (() { final guardedValue = map['testIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testIPAddressType: (() { final guardedValue = map['testIPAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testNetworkId: (() { final guardedValue = map['testNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testSubnetName: (() { final guardedValue = map['testSubnetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
