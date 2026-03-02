// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageRcm NIC details.
class InMageRcmNicDetailsResponse {
  /// A value indicating whether this is the primary NIC.
  final pulumi.Input<String>? isPrimaryNic;
  /// A value indicating whether this NIC is selected for failover.
  final pulumi.Input<String>? isSelectedForFailover;
  /// The NIC Id.
  final pulumi.Input<String> nicId;
  /// The source IP address.
  final pulumi.Input<String> sourceIPAddress;
  /// The source IP address type.
  final pulumi.Input<String> sourceIPAddressType;
  /// Source network Id.
  final pulumi.Input<String> sourceNetworkId;
  /// Source subnet name.
  final pulumi.Input<String> sourceSubnetName;
  /// The target IP address.
  final pulumi.Input<String>? targetIPAddress;
  /// The target IP address type.
  final pulumi.Input<String>? targetIPAddressType;
  /// The target NIC name.
  final pulumi.Input<String>? targetNicName;
  /// Target subnet name.
  final pulumi.Input<String>? targetSubnetName;
  /// The test IP address.
  final pulumi.Input<String>? testIPAddress;
  /// The test IP address type.
  final pulumi.Input<String>? testIPAddressType;
  /// Test subnet name.
  final pulumi.Input<String>? testSubnetName;

  /// Creates a new [InMageRcmNicDetailsResponse].
  /// [isPrimaryNic] A value indicating whether this is the primary NIC.
  /// [isSelectedForFailover] A value indicating whether this NIC is selected for failover.
  /// [nicId] The NIC Id.
  /// [sourceIPAddress] The source IP address.
  /// [sourceIPAddressType] The source IP address type.
  /// [sourceNetworkId] Source network Id.
  /// [sourceSubnetName] Source subnet name.
  /// [targetIPAddress] The target IP address.
  /// [targetIPAddressType] The target IP address type.
  /// [targetNicName] The target NIC name.
  /// [targetSubnetName] Target subnet name.
  /// [testIPAddress] The test IP address.
  /// [testIPAddressType] The test IP address type.
  /// [testSubnetName] Test subnet name.
  InMageRcmNicDetailsResponse({
    this.isPrimaryNic,
    this.isSelectedForFailover,
    required this.nicId,
    required this.sourceIPAddress,
    required this.sourceIPAddressType,
    required this.sourceNetworkId,
    required this.sourceSubnetName,
    this.targetIPAddress,
    this.targetIPAddressType,
    this.targetNicName,
    this.targetSubnetName,
    this.testIPAddress,
    this.testIPAddressType,
    this.testSubnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPrimaryNic': ?isPrimaryNic,
      'isSelectedForFailover': ?isSelectedForFailover,
      'nicId': nicId,
      'sourceIPAddress': sourceIPAddress,
      'sourceIPAddressType': sourceIPAddressType,
      'sourceNetworkId': sourceNetworkId,
      'sourceSubnetName': sourceSubnetName,
      'targetIPAddress': ?targetIPAddress,
      'targetIPAddressType': ?targetIPAddressType,
      'targetNicName': ?targetNicName,
      'targetSubnetName': ?targetSubnetName,
      'testIPAddress': ?testIPAddress,
      'testIPAddressType': ?testIPAddressType,
      'testSubnetName': ?testSubnetName,
    };
  }

  factory InMageRcmNicDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmNicDetailsResponse(
      isPrimaryNic: map['isPrimaryNic'] == null ? null : (map['isPrimaryNic'] as String).input(),
      isSelectedForFailover: map['isSelectedForFailover'] == null ? null : (map['isSelectedForFailover'] as String).input(),
      nicId: (map['nicId'] as String).input(),
      sourceIPAddress: (map['sourceIPAddress'] as String).input(),
      sourceIPAddressType: (map['sourceIPAddressType'] as String).input(),
      sourceNetworkId: (map['sourceNetworkId'] as String).input(),
      sourceSubnetName: (map['sourceSubnetName'] as String).input(),
      targetIPAddress: map['targetIPAddress'] == null ? null : (map['targetIPAddress'] as String).input(),
      targetIPAddressType: map['targetIPAddressType'] == null ? null : (map['targetIPAddressType'] as String).input(),
      targetNicName: map['targetNicName'] == null ? null : (map['targetNicName'] as String).input(),
      targetSubnetName: map['targetSubnetName'] == null ? null : (map['targetSubnetName'] as String).input(),
      testIPAddress: map['testIPAddress'] == null ? null : (map['testIPAddress'] as String).input(),
      testIPAddressType: map['testIPAddressType'] == null ? null : (map['testIPAddressType'] as String).input(),
      testSubnetName: map['testSubnetName'] == null ? null : (map['testSubnetName'] as String).input(),
    );
  }
}

