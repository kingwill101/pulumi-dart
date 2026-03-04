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
      dnsPtr: (() {
        final guardedValue = map['dnsPtr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      floatingIpId: (() {
        final guardedValue = map['floatingIpId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerId: (() {
        final guardedValue = map['loadBalancerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      primaryIpId: (() {
        final guardedValue = map['primaryIpId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      serverId: (() {
        final guardedValue = map['serverId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
