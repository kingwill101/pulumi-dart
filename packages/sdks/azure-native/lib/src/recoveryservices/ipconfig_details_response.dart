// ignore_for_file: unused_element, unnecessary_cast


class IPConfigDetailsResponse {
  final String? ipAddressType;
  final bool? isPrimary;
  final bool? isSeletedForFailover;
  final String? name;
  final String? recoveryIPAddressType;
  final List<String>? recoveryLBBackendAddressPoolIds;
  final String? recoveryPublicIPAddressId;
  final String? recoveryStaticIPAddress;
  final String? recoverySubnetName;
  final String? staticIPAddress;
  final String? subnetName;
  final List<String>? tfoLBBackendAddressPoolIds;
  final String? tfoPublicIPAddressId;
  final String? tfoStaticIPAddress;
  final String? tfoSubnetName;

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
      ipAddressType: map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      isPrimary: map['isPrimary'] == null ? null : map['isPrimary'] as bool,
      isSeletedForFailover: map['isSeletedForFailover'] == null ? null : map['isSeletedForFailover'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      recoveryIPAddressType: map['recoveryIPAddressType'] == null ? null : map['recoveryIPAddressType'] as String,
      recoveryLBBackendAddressPoolIds: map['recoveryLBBackendAddressPoolIds'] == null ? null : (map['recoveryLBBackendAddressPoolIds'] as List).cast<String>(),
      recoveryPublicIPAddressId: map['recoveryPublicIPAddressId'] == null ? null : map['recoveryPublicIPAddressId'] as String,
      recoveryStaticIPAddress: map['recoveryStaticIPAddress'] == null ? null : map['recoveryStaticIPAddress'] as String,
      recoverySubnetName: map['recoverySubnetName'] == null ? null : map['recoverySubnetName'] as String,
      staticIPAddress: map['staticIPAddress'] == null ? null : map['staticIPAddress'] as String,
      subnetName: map['subnetName'] == null ? null : map['subnetName'] as String,
      tfoLBBackendAddressPoolIds: map['tfoLBBackendAddressPoolIds'] == null ? null : (map['tfoLBBackendAddressPoolIds'] as List).cast<String>(),
      tfoPublicIPAddressId: map['tfoPublicIPAddressId'] == null ? null : map['tfoPublicIPAddressId'] as String,
      tfoStaticIPAddress: map['tfoStaticIPAddress'] == null ? null : map['tfoStaticIPAddress'] as String,
      tfoSubnetName: map['tfoSubnetName'] == null ? null : map['tfoSubnetName'] as String,
    );
  }
}

