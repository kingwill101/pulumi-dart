// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_device_subnet_capacity.dart';

/// Input properties used for looking up and filtering ZeroTrustDeviceSubnet resources.
class ZeroTrustDeviceSubnetState {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  /// IP capacity information for the subnet.
  final pulumi.Input<ZeroTrustDeviceSubnetCapacity?>? capacity;
  /// An optional description of the subnet.
  final pulumi.Input<String?>? comment;
  /// Timestamp of when the resource was created.
  final pulumi.Input<String?>? createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final pulumi.Input<String?>? deletedAt;
  /// If `true`, this is the default subnet for the account. There can only be one default subnet per account.
  final pulumi.Input<bool?>? isDefaultNetwork;
  /// A user-friendly name for the subnet.
  final pulumi.Input<String?>? name;
  /// The private IPv4 or IPv6 range defining the subnet, in CIDR notation.
  final pulumi.Input<String?>? network;
  /// The type of subnet.
  /// Available values: "cloudflare*source", "initial*resolved_ip", "warp".
  final pulumi.Input<String?>? subnetType;

  /// Creates a new [ZeroTrustDeviceSubnetState].
  /// [accountId] Cloudflare account ID
  /// [capacity] IP capacity information for the subnet.
  /// [comment] An optional description of the subnet.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [isDefaultNetwork] If `true`, this is the default subnet for the account. There can only be one default subnet per account.
  /// [name] A user-friendly name for the subnet.
  /// [network] The private IPv4 or IPv6 range defining the subnet, in CIDR notation.
  /// [subnetType] The type of subnet.
  const ZeroTrustDeviceSubnetState({
    this.accountId,
    this.capacity,
    this.comment,
    this.createdAt,
    this.deletedAt,
    this.isDefaultNetwork,
    this.name,
    this.network,
    this.subnetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'capacity': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDeviceSubnetCapacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'comment': ?comment,
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'isDefaultNetwork': ?isDefaultNetwork,
      'name': ?name,
      'network': ?network,
      'subnetType': ?subnetType,
    };
  }

  factory ZeroTrustDeviceSubnetState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceSubnetState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDeviceSubnetCapacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefaultNetwork: (() { final guardedValue = map['isDefaultNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetType: (() { final guardedValue = map['subnetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
