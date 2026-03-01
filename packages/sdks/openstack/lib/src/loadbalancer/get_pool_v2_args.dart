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
    pulumi.Output<String>? lbMethod,
    pulumi.Output<String>? loadbalancerId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? poolId,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? tags,
  }) :
      lbMethod = pulumi.Input.asOptionalInput<String>(lbMethod),
      loadbalancerId = pulumi.Input.asOptionalInput<String>(loadbalancerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      poolId = pulumi.Input.asOptionalInput<String>(poolId),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

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
      lbMethod: map['lbMethod'] == null ? null : pulumi.Output.create<String>(map['lbMethod'] as String),
      loadbalancerId: map['loadbalancerId'] == null ? null : pulumi.Output.create<String>(map['loadbalancerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      poolId: map['poolId'] == null ? null : pulumi.Output.create<String>(map['poolId'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
    );
  }
}

