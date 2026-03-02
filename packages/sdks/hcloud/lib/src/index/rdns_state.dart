// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Rdns resources.
class RdnsState {
  /// The DNS address the `ip_address` should resolve to.
  final pulumi.Input<String>? dnsPtr;
  /// The Floating IP the `ip_address` belongs to.
  final pulumi.Input<int>? floatingIpId;
  /// The IP address that should point to `dns_ptr`.
  final pulumi.Input<String>? ipAddress;
  /// The Load Balancer the `ip_address` belongs to.
  final pulumi.Input<int>? loadBalancerId;
  /// The Primary IP the `ip_address` belongs to.
  final pulumi.Input<int>? primaryIpId;
  /// The server the `ip_address` belongs to.
  final pulumi.Input<int>? serverId;

  /// Creates a new [RdnsState].
  /// [dnsPtr] The DNS address the `ip_address` should resolve to.
  /// [floatingIpId] The Floating IP the `ip_address` belongs to.
  /// [ipAddress] The IP address that should point to `dns_ptr`.
  /// [loadBalancerId] The Load Balancer the `ip_address` belongs to.
  /// [primaryIpId] The Primary IP the `ip_address` belongs to.
  /// [serverId] The server the `ip_address` belongs to.
  RdnsState({
    this.dnsPtr,
    this.floatingIpId,
    this.ipAddress,
    this.loadBalancerId,
    this.primaryIpId,
    this.serverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsPtr': ?dnsPtr,
      'floatingIpId': ?floatingIpId,
      'ipAddress': ?ipAddress,
      'loadBalancerId': ?loadBalancerId,
      'primaryIpId': ?primaryIpId,
      'serverId': ?serverId,
    };
  }

  factory RdnsState.fromMap(Map<String, dynamic> map) {
    return RdnsState(
      dnsPtr: map['dnsPtr'] == null ? null : (map['dnsPtr']! as String).input(),
      floatingIpId: map['floatingIpId'] == null ? null : (map['floatingIpId']! as int).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      loadBalancerId: map['loadBalancerId'] == null ? null : (map['loadBalancerId']! as int).input(),
      primaryIpId: map['primaryIpId'] == null ? null : (map['primaryIpId']! as int).input(),
      serverId: map['serverId'] == null ? null : (map['serverId']! as int).input(),
    );
  }
}

