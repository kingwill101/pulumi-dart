// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_device_subnet_capacity.dart';

/// Result data returned by getZeroTrustDeviceSubnet.
class GetZeroTrustDeviceSubnetResult {
  /// Cloudflare account ID
  final String? accountId;
  /// IP capacity information for the subnet.
  final GetZeroTrustDeviceSubnetCapacity? capacity;
  /// An optional description of the subnet.
  final String? comment;
  /// Timestamp of when the resource was created.
  final String? createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final String? deletedAt;
  /// The UUID of the subnet.
  final String? id;
  /// If `true`, this is the default subnet for the account. There can only be one default subnet per account.
  final bool? isDefaultNetwork;
  /// A user-friendly name for the subnet.
  final String? name;
  /// The private IPv4 or IPv6 range defining the subnet, in CIDR notation.
  final String? network;
  /// The UUID of the subnet.
  final String? subnetId;
  /// The type of subnet.
  /// Available values: "cloudflare*source", "initial*resolved_ip", "warp".
  final String? subnetType;

  /// Creates a new [GetZeroTrustDeviceSubnetResult].
  /// [accountId] Cloudflare account ID
  /// [capacity] IP capacity information for the subnet.
  /// [comment] An optional description of the subnet.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [id] The UUID of the subnet.
  /// [isDefaultNetwork] If `true`, this is the default subnet for the account. There can only be one default subnet per account.
  /// [name] A user-friendly name for the subnet.
  /// [network] The private IPv4 or IPv6 range defining the subnet, in CIDR notation.
  /// [subnetId] The UUID of the subnet.
  /// [subnetType] The type of subnet.
  const GetZeroTrustDeviceSubnetResult({
    this.accountId,
    this.capacity,
    this.comment,
    this.createdAt,
    this.deletedAt,
    this.id,
    this.isDefaultNetwork,
    this.name,
    this.network,
    this.subnetId,
    this.subnetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'capacity': ?capacity?.toMap(),
      'comment': ?comment,
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'id': ?id,
      'isDefaultNetwork': ?isDefaultNetwork,
      'name': ?name,
      'network': ?network,
      'subnetId': ?subnetId,
      'subnetType': ?subnetType,
    };
  }

  factory GetZeroTrustDeviceSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceSubnetResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return GetZeroTrustDeviceSubnetCapacity.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDefaultNetwork: (() { final guardedValue = map['isDefaultNetwork']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetType: (() { final guardedValue = map['subnetType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
