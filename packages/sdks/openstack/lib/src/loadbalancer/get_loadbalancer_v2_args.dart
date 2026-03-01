// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_loadbalancer_get_loadbalancer_v2_get_loadbalancer_v2_args_doc}
/// Arguments for getLoadbalancerV2.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_get_loadbalancer_v2_get_loadbalancer_v2_args_doc}
class GetLoadbalancerV2Args {
  /// The human-readable description for the loadbalancer.
  final pulumi.Input<String>? description;
  /// The ID of the loadbalancer. Exactly one of
  /// `name`, `loadbalancer_id` is required to be set.
  final pulumi.Input<String>? loadbalancerId;
  /// The name of the loadbalancer. Exactly one of `name`,
  /// `loadbalancer_id` is required to be set.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Load Balancer client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// A set of tags applied to the loadbalancer. The load balancer
  /// will be returned if it has all of the specified tags.
  final pulumi.Input<List<String>>? tags;
  /// A set of tags. The load balancer will be returned if
  /// it has at least one of the specified tags.
  final pulumi.Input<List<String>>? tagsAnies;
  /// A set of tags. The load balancer will be returned
  /// if it does not have any of the specified tags.
  final pulumi.Input<List<String>>? tagsNotAnies;
  /// A set of tags. The load balancer will be returned if
  /// it does not have all of the specified tags.
  final pulumi.Input<List<String>>? tagsNots;
  /// The IP address of the loadbalancer's virtual IP (VIP).
  final pulumi.Input<String>? vipAddress;

  /// Creates a new [GetLoadbalancerV2Args].
  /// [description] The human-readable description for the loadbalancer.
  /// [loadbalancerId] The ID of the loadbalancer. Exactly one of
  /// [name] The name of the loadbalancer. Exactly one of `name`,
  /// [region] The region in which to obtain the V2 Load Balancer client.
  /// [tags] A set of tags applied to the loadbalancer. The load balancer
  /// [tagsAnies] A set of tags. The load balancer will be returned if
  /// [tagsNotAnies] A set of tags. The load balancer will be returned
  /// [tagsNots] A set of tags. The load balancer will be returned if
  /// [vipAddress] The IP address of the loadbalancer's virtual IP (VIP).
  GetLoadbalancerV2Args({
    pulumi.Output<String>? description,
    pulumi.Output<String>? loadbalancerId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<List<String>>? tagsAnies,
    pulumi.Output<List<String>>? tagsNotAnies,
    pulumi.Output<List<String>>? tagsNots,
    pulumi.Output<String>? vipAddress,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      loadbalancerId = pulumi.Input.asOptionalInput<String>(loadbalancerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      tagsAnies = pulumi.Input.asOptionalInput<List<String>>(tagsAnies),
      tagsNotAnies = pulumi.Input.asOptionalInput<List<String>>(tagsNotAnies),
      tagsNots = pulumi.Input.asOptionalInput<List<String>>(tagsNots),
      vipAddress = pulumi.Input.asOptionalInput<String>(vipAddress);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'loadbalancerId': ?loadbalancerId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAnies': ?tagsAnies,
      'tagsNotAnies': ?tagsNotAnies,
      'tagsNots': ?tagsNots,
      'vipAddress': ?vipAddress,
    };
  }

  factory GetLoadbalancerV2Args.fromMap(Map<String, dynamic> map) {
    return GetLoadbalancerV2Args(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      loadbalancerId: map['loadbalancerId'] == null ? null : pulumi.Output.create<String>(map['loadbalancerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      tagsAnies: map['tagsAnies'] == null ? null : pulumi.Output.create<List<String>>((map['tagsAnies'] as List).cast<String>()),
      tagsNotAnies: map['tagsNotAnies'] == null ? null : pulumi.Output.create<List<String>>((map['tagsNotAnies'] as List).cast<String>()),
      tagsNots: map['tagsNots'] == null ? null : pulumi.Output.create<List<String>>((map['tagsNots'] as List).cast<String>()),
      vipAddress: map['vipAddress'] == null ? null : pulumi.Output.create<String>(map['vipAddress'] as String),
    );
  }
}

