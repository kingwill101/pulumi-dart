// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_lb_loadbalancer_v2_lb_loadbalancer_v2_args_doc}
/// The set of arguments for LbLoadbalancerV2.
/// {@endtemplate}
/// {@macro pulumi_index_lb_loadbalancer_v2_lb_loadbalancer_v2_args_doc}
class LbLoadbalancerV2Args {
  /// The administrative state of the Loadbalancer.
  /// A valid value is true (UP) or false (DOWN).
  final pulumi.Input<bool>? adminStateUp;
  /// The availability zone of the Loadbalancer.
  /// Changing this creates a new loadbalancer. Available only for Octavia
  /// **minor version 2.14 or later**.
  final pulumi.Input<String>? availabilityZone;
  /// Human-readable description for the Loadbalancer.
  final pulumi.Input<String>? description;
  /// The UUID of a flavor. Changing this creates a new
  /// loadbalancer.
  final pulumi.Input<String>? flavorId;
  /// The name of the provider. Changing this
  /// creates a new loadbalancer.
  final pulumi.Input<String>? loadbalancerProvider;
  /// Human-readable name for the Loadbalancer. Does not have
  /// to be unique.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an LB member. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// LB member.
  final pulumi.Input<String>? region;
  /// A list of security group IDs to apply to the
  /// loadbalancer. The security groups must be specified by ID and not name (as
  /// opposed to how they are configured with the Compute Instance).
  final pulumi.Input<List<String>>? securityGroupIds;
  /// A list of simple strings assigned to the loadbalancer.
  /// Available only for Octavia **minor version 2.5 or later**.
  final pulumi.Input<List<String>>? tags;
  /// Required for admins. The UUID of the tenant who owns
  /// the Loadbalancer.  Only administrative users can specify a tenant UUID
  /// other than their own.  Changing this creates a new loadbalancer.
  final pulumi.Input<String>? tenantId;
  /// The ip address of the load balancer.
  /// Changing this creates a new loadbalancer.
  final pulumi.Input<String>? vipAddress;
  /// The network on which to allocate the
  /// Loadbalancer's address. A tenant can only create Loadbalancers on networks
  /// authorized by policy (e.g. networks that belong to them or networks that
  /// are shared).  Changing this creates a new loadbalancer. Exactly one of
  /// `vip_subnet_id`, `vip_network_id` or `vip_port_id` has to be defined.
  final pulumi.Input<String>? vipNetworkId;
  /// The port UUID that the loadbalancer will use.
  /// Changing this creates a new loadbalancer. Exactly one of
  /// `vip_subnet_id`, `vip_network_id` or `vip_port_id` has to be defined.
  final pulumi.Input<String>? vipPortId;
  /// The ID of the QoS Policy which will
  /// be applied to the Virtual IP (VIP).
  final pulumi.Input<String>? vipQosPolicyId;
  /// The subnet on which to allocate the
  /// Loadbalancer's address. A tenant can only create Loadbalancers on networks
  /// authorized by policy (e.g. networks that belong to them or networks that
  /// are shared).  Changing this creates a new loadbalancer. Exactly one of
  /// `vip_subnet_id`, `vip_network_id` or `vip_port_id` has to be defined.
  final pulumi.Input<String>? vipSubnetId;

  /// Creates a new [LbLoadbalancerV2Args].
  /// [adminStateUp] The administrative state of the Loadbalancer.
  /// [availabilityZone] The availability zone of the Loadbalancer.
  /// [description] Human-readable description for the Loadbalancer.
  /// [flavorId] The UUID of a flavor. Changing this creates a new
  /// [loadbalancerProvider] The name of the provider. Changing this
  /// [name] Human-readable name for the Loadbalancer. Does not have
  /// [region] The region in which to obtain the V2 Networking client.
  /// [securityGroupIds] A list of security group IDs to apply to the
  /// [tags] A list of simple strings assigned to the loadbalancer.
  /// [tenantId] Required for admins. The UUID of the tenant who owns
  /// [vipAddress] The ip address of the load balancer.
  /// [vipNetworkId] The network on which to allocate the
  /// [vipPortId] The port UUID that the loadbalancer will use.
  /// [vipQosPolicyId] The ID of the QoS Policy which will
  /// [vipSubnetId] The subnet on which to allocate the
  LbLoadbalancerV2Args({
    this.adminStateUp,
    this.availabilityZone,
    this.description,
    this.flavorId,
    this.loadbalancerProvider,
    this.name,
    this.region,
    this.securityGroupIds,
    this.tags,
    this.tenantId,
    this.vipAddress,
    this.vipNetworkId,
    this.vipPortId,
    this.vipQosPolicyId,
    this.vipSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'availabilityZone': ?availabilityZone,
      'description': ?description,
      'flavorId': ?flavorId,
      'loadbalancerProvider': ?loadbalancerProvider,
      'name': ?name,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'tags': ?tags,
      'tenantId': ?tenantId,
      'vipAddress': ?vipAddress,
      'vipNetworkId': ?vipNetworkId,
      'vipPortId': ?vipPortId,
      'vipQosPolicyId': ?vipQosPolicyId,
      'vipSubnetId': ?vipSubnetId,
    };
  }

  factory LbLoadbalancerV2Args.fromMap(Map<String, dynamic> map) {
    return LbLoadbalancerV2Args(
      adminStateUp: map['adminStateUp'] == null ? null : (map['adminStateUp']! as bool).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      flavorId: map['flavorId'] == null ? null : (map['flavorId']! as String).input(),
      loadbalancerProvider: map['loadbalancerProvider'] == null ? null : (map['loadbalancerProvider']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds']! as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      vipAddress: map['vipAddress'] == null ? null : (map['vipAddress']! as String).input(),
      vipNetworkId: map['vipNetworkId'] == null ? null : (map['vipNetworkId']! as String).input(),
      vipPortId: map['vipPortId'] == null ? null : (map['vipPortId']! as String).input(),
      vipQosPolicyId: map['vipQosPolicyId'] == null ? null : (map['vipQosPolicyId']! as String).input(),
      vipSubnetId: map['vipSubnetId'] == null ? null : (map['vipSubnetId']! as String).input(),
    );
  }
}

