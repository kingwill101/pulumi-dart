// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Rdns resources.
class RdnsState {
  /// Domain name `ipAddress` should point to.
  final pulumi.Input<String>? dnsPtr;
  /// ID of the Floating IP the `ipAddress` belongs to.
  final pulumi.Input<int>? floatingIpId;
  /// IP address that should point to `dnsPtr`.
  final pulumi.Input<String>? ipAddress;
  /// ID of the Load Balancer the `ipAddress` belongs to.
  final pulumi.Input<int>? loadBalancerId;
  /// ID of the Primary IP the `ipAddress` belongs to.
  final pulumi.Input<int>? primaryIpId;
  /// ID of the Server the `ipAddress` belongs to.
  final pulumi.Input<int>? serverId;

  /// Creates a new [RdnsState].
  /// [dnsPtr] Domain name `ipAddress` should point to.
  /// [floatingIpId] ID of the Floating IP the `ipAddress` belongs to.
  /// [ipAddress] IP address that should point to `dnsPtr`.
  /// [loadBalancerId] ID of the Load Balancer the `ipAddress` belongs to.
  /// [primaryIpId] ID of the Primary IP the `ipAddress` belongs to.
  /// [serverId] ID of the Server the `ipAddress` belongs to.
  const RdnsState({
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
      dnsPtr: (() { final guardedValue = map['dnsPtr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      floatingIpId: (() { final guardedValue = map['floatingIpId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerId: (() { final guardedValue = map['loadBalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      primaryIpId: (() { final guardedValue = map['primaryIpId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
