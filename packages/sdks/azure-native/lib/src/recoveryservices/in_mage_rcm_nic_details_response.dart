// ignore_for_file: unused_element, unnecessary_cast


/// InMageRcm NIC details.
class InMageRcmNicDetailsResponse {
  /// A value indicating whether this is the primary NIC.
  final String? isPrimaryNic;
  /// A value indicating whether this NIC is selected for failover.
  final String? isSelectedForFailover;
  /// The NIC Id.
  final String nicId;
  /// The source IP address.
  final String sourceIPAddress;
  /// The source IP address type.
  final String sourceIPAddressType;
  /// Source network Id.
  final String sourceNetworkId;
  /// Source subnet name.
  final String sourceSubnetName;
  /// The target IP address.
  final String? targetIPAddress;
  /// The target IP address type.
  final String? targetIPAddressType;
  /// The target NIC name.
  final String? targetNicName;
  /// Target subnet name.
  final String? targetSubnetName;
  /// The test IP address.
  final String? testIPAddress;
  /// The test IP address type.
  final String? testIPAddressType;
  /// Test subnet name.
  final String? testSubnetName;

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
      isPrimaryNic: map['isPrimaryNic'] == null ? null : map['isPrimaryNic'] as String,
      isSelectedForFailover: map['isSelectedForFailover'] == null ? null : map['isSelectedForFailover'] as String,
      nicId: map['nicId'] as String,
      sourceIPAddress: map['sourceIPAddress'] as String,
      sourceIPAddressType: map['sourceIPAddressType'] as String,
      sourceNetworkId: map['sourceNetworkId'] as String,
      sourceSubnetName: map['sourceSubnetName'] as String,
      targetIPAddress: map['targetIPAddress'] == null ? null : map['targetIPAddress'] as String,
      targetIPAddressType: map['targetIPAddressType'] == null ? null : map['targetIPAddressType'] as String,
      targetNicName: map['targetNicName'] == null ? null : map['targetNicName'] as String,
      targetSubnetName: map['targetSubnetName'] == null ? null : map['targetSubnetName'] as String,
      testIPAddress: map['testIPAddress'] == null ? null : map['testIPAddress'] as String,
      testIPAddressType: map['testIPAddressType'] == null ? null : map['testIPAddressType'] as String,
      testSubnetName: map['testSubnetName'] == null ? null : map['testSubnetName'] as String,
    );
  }
}

