// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_get_pool_v2_get_pool_v2_args_doc}
/// Arguments for getPoolV2.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_get_pool_v2_get_pool_v2_args_doc}
class GetPoolV2Args {
  /// The load balancing algorithm to distribute traffic to the
  /// pool's members.
  final pulumi.Input<String>? lbMethod;

  /// The ID of the load balancer associated with
  /// the requested pool.
  final pulumi.Input<String>? loadbalancerId;

  /// The name of the pool. Exactly one of `name`, `pool_id`
  /// is required to be set.
  final pulumi.Input<String>? name;

  /// The ID of the pool. Exactly one of `name`, `pool_id`
  /// is required to be set.
  final pulumi.Input<String>? poolId;

  /// The protocol of the requested pool.
  final pulumi.Input<String>? protocol;

  /// The region in which to obtain the V2 Load Balancer
  /// client. If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// A set of tags applied to the loadbalancer's pool. The
  /// loadbalancer' pool will be returned if it has all of the specified tags.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [GetPoolV2Args].
  /// [lbMethod] The load balancing algorithm to distribute traffic to the
  /// [loadbalancerId] The ID of the load balancer associated with
  /// [name] The name of the pool. Exactly one of `name`, `pool_id`
  /// [poolId] The ID of the pool. Exactly one of `name`, `pool_id`
  /// [protocol] The protocol of the requested pool.
  /// [region] The region in which to obtain the V2 Load Balancer
  /// [tags] A set of tags applied to the loadbalancer's pool. The
  GetPoolV2Args({
    this.lbMethod,
    this.loadbalancerId,
    this.name,
    this.poolId,
    this.protocol,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lbMethod': ?lbMethod,
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'poolId': ?poolId,
      'protocol': ?protocol,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetPoolV2Args.fromMap(Map<String, dynamic> map) {
    return GetPoolV2Args(
      lbMethod: (() {
        final guardedValue = map['lbMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadbalancerId: (() {
        final guardedValue = map['loadbalancerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      poolId: (() {
        final guardedValue = map['poolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
