// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_rdns_rdns_args_doc}
/// The set of arguments for Rdns.
/// {@endtemplate}
/// {@macro pulumi_index_rdns_rdns_args_doc}
class RdnsArgs {
  /// The DNS address the `ip_address` should resolve to.
  final pulumi.Input<String> dnsPtr;
  /// The Floating IP the `ip_address` belongs to.
  final pulumi.Input<int>? floatingIpId;
  /// The IP address that should point to `dns_ptr`.
  final pulumi.Input<String> ipAddress;
  /// The Load Balancer the `ip_address` belongs to.
  final pulumi.Input<int>? loadBalancerId;
  /// The Primary IP the `ip_address` belongs to.
  final pulumi.Input<int>? primaryIpId;
  /// The server the `ip_address` belongs to.
  final pulumi.Input<int>? serverId;

  /// Creates a new [RdnsArgs].
  /// [dnsPtr] The DNS address the `ip_address` should resolve to.
  /// [floatingIpId] The Floating IP the `ip_address` belongs to.
  /// [ipAddress] The IP address that should point to `dns_ptr`.
  /// [loadBalancerId] The Load Balancer the `ip_address` belongs to.
  /// [primaryIpId] The Primary IP the `ip_address` belongs to.
  /// [serverId] The server the `ip_address` belongs to.
  RdnsArgs({
    required pulumi.Output<String> dnsPtr,
    pulumi.Output<int>? floatingIpId,
    required pulumi.Output<String> ipAddress,
    pulumi.Output<int>? loadBalancerId,
    pulumi.Output<int>? primaryIpId,
    pulumi.Output<int>? serverId,
  }) :
      dnsPtr = pulumi.Input.asInput<String>(dnsPtr),
      floatingIpId = pulumi.Input.asOptionalInput<int>(floatingIpId),
      ipAddress = pulumi.Input.asInput<String>(ipAddress),
      loadBalancerId = pulumi.Input.asOptionalInput<int>(loadBalancerId),
      primaryIpId = pulumi.Input.asOptionalInput<int>(primaryIpId),
      serverId = pulumi.Input.asOptionalInput<int>(serverId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsPtr': dnsPtr,
      'floatingIpId': ?floatingIpId,
      'ipAddress': ipAddress,
      'loadBalancerId': ?loadBalancerId,
      'primaryIpId': ?primaryIpId,
      'serverId': ?serverId,
    };
  }

  factory RdnsArgs.fromMap(Map<String, dynamic> map) {
    return RdnsArgs(
      dnsPtr: pulumi.Output.create<String>(map['dnsPtr'] as String),
      floatingIpId: map['floatingIpId'] == null ? null : pulumi.Output.create<int>(map['floatingIpId'] as int),
      ipAddress: pulumi.Output.create<String>(map['ipAddress'] as String),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<int>(map['loadBalancerId'] as int),
      primaryIpId: map['primaryIpId'] == null ? null : pulumi.Output.create<int>(map['primaryIpId'] as int),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<int>(map['serverId'] as int),
    );
  }
}

