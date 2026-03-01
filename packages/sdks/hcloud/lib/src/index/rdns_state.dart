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
    pulumi.Output<String>? dnsPtr,
    pulumi.Output<int>? floatingIpId,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<int>? loadBalancerId,
    pulumi.Output<int>? primaryIpId,
    pulumi.Output<int>? serverId,
  }) :
      dnsPtr = pulumi.Input.asOptionalInput<String>(dnsPtr),
      floatingIpId = pulumi.Input.asOptionalInput<int>(floatingIpId),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      loadBalancerId = pulumi.Input.asOptionalInput<int>(loadBalancerId),
      primaryIpId = pulumi.Input.asOptionalInput<int>(primaryIpId),
      serverId = pulumi.Input.asOptionalInput<int>(serverId);

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
      dnsPtr: map['dnsPtr'] == null ? null : pulumi.Output.create<String>(map['dnsPtr'] as String),
      floatingIpId: map['floatingIpId'] == null ? null : pulumi.Output.create<int>(map['floatingIpId'] as int),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<int>(map['loadBalancerId'] as int),
      primaryIpId: map['primaryIpId'] == null ? null : pulumi.Output.create<int>(map['primaryIpId'] as int),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<int>(map['serverId'] as int),
    );
  }
}

