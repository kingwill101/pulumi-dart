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
    this.description,
    this.loadbalancerId,
    this.name,
    this.region,
    this.tags,
    this.tagsAnies,
    this.tagsNotAnies,
    this.tagsNots,
    this.vipAddress,
  });

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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      loadbalancerId: map['loadbalancerId'] == null ? null : (map['loadbalancerId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      tagsAnies: map['tagsAnies'] == null ? null : ((map['tagsAnies'] as List).cast<String>()).input(),
      tagsNotAnies: map['tagsNotAnies'] == null ? null : ((map['tagsNotAnies'] as List).cast<String>()).input(),
      tagsNots: map['tagsNots'] == null ? null : ((map['tagsNots'] as List).cast<String>()).input(),
      vipAddress: map['vipAddress'] == null ? null : (map['vipAddress'] as String).input(),
    );
  }
}

