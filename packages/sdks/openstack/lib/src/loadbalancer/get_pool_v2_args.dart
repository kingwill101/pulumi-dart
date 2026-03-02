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
      lbMethod: map['lbMethod'] == null ? null : (map['lbMethod']! as String).input(),
      loadbalancerId: map['loadbalancerId'] == null ? null : (map['loadbalancerId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      poolId: map['poolId'] == null ? null : (map['poolId']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
    );
  }
}

