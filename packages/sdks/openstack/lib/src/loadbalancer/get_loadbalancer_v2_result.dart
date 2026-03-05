// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_loadbalancer_v2_listener.dart';
import 'get_loadbalancer_v2_pool.dart';

/// Result data returned by getLoadbalancerV2.
class GetLoadbalancerV2Result {
  /// A list of additional VIP IP addresses associated with
  /// the loadbalancer.
  final List<String> additionalVips;
  /// The administrative state of the loadbalancer (true/false).
  final bool adminStateUp;
  /// The availability zone of the loadbalancer.
  final String availabilityZone;
  /// The description of the loadbalancer.
  final String description;
  /// The flavor ID used by the loadbalancer.
  final String flavorId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of listener IDs (UUIDs) associated with the loadbalancer.
  final List<GetLoadbalancerV2Listener> listeners;
  final String loadbalancerId;
  /// The loadbalancer driver/provider used by Octavia
  /// (for example, `amphora`).
  final String loadbalancerProvider;
  /// The name of the loadbalancer.
  final String name;
  /// The operating status of the loadbalancer.
  final String operatingStatus;
  /// A list of pool IDs (UUIDs) associated with the loadbalancer.
  final List<GetLoadbalancerV2Pool> pools;
  /// The owner (project/tenant) ID of the loadbalancer.
  final String projectId;
  /// The provisioning status of the loadbalancer.
  final String provisioningStatus;
  final String region;
  /// A set of tags applied to the loadbalancer.
  final List<String> tags;
  final List<String>? tagsAnies;
  final List<String>? tagsNotAnies;
  final List<String>? tagsNots;
  /// The IP address of the loadbalancer’s virtual IP (VIP).
  final String vipAddress;
  /// The network ID associated with the VIP.
  final String vipNetworkId;
  /// The port ID associated with the VIP.
  final String vipPortId;
  /// The QoS policy ID associated with the VIP, if any.
  final String vipQosPolicyId;
  /// The subnet ID associated with the VIP.
  final String vipSubnetId;

  /// Creates a new [GetLoadbalancerV2Result].
  /// [additionalVips] A list of additional VIP IP addresses associated with
  /// [adminStateUp] The administrative state of the loadbalancer (true/false).
  /// [availabilityZone] The availability zone of the loadbalancer.
  /// [description] The description of the loadbalancer.
  /// [flavorId] The flavor ID used by the loadbalancer.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [listeners] A list of listener IDs (UUIDs) associated with the loadbalancer.
  /// [loadbalancerId] Required.
  /// [loadbalancerProvider] The loadbalancer driver/provider used by Octavia
  /// [name] The name of the loadbalancer.
  /// [operatingStatus] The operating status of the loadbalancer.
  /// [pools] A list of pool IDs (UUIDs) associated with the loadbalancer.
  /// [projectId] The owner (project/tenant) ID of the loadbalancer.
  /// [provisioningStatus] The provisioning status of the loadbalancer.
  /// [region] Required.
  /// [tags] A set of tags applied to the loadbalancer.
  /// [tagsAnies] Optional.
  /// [tagsNotAnies] Optional.
  /// [tagsNots] Optional.
  /// [vipAddress] The IP address of the loadbalancer’s virtual IP (VIP).
  /// [vipNetworkId] The network ID associated with the VIP.
  /// [vipPortId] The port ID associated with the VIP.
  /// [vipQosPolicyId] The QoS policy ID associated with the VIP, if any.
  /// [vipSubnetId] The subnet ID associated with the VIP.
  GetLoadbalancerV2Result({
    required this.additionalVips,
    required this.adminStateUp,
    required this.availabilityZone,
    required this.description,
    required this.flavorId,
    required this.id,
    required this.listeners,
    required this.loadbalancerId,
    required this.loadbalancerProvider,
    required this.name,
    required this.operatingStatus,
    required this.pools,
    required this.projectId,
    required this.provisioningStatus,
    required this.region,
    required this.tags,
    this.tagsAnies,
    this.tagsNotAnies,
    this.tagsNots,
    required this.vipAddress,
    required this.vipNetworkId,
    required this.vipPortId,
    required this.vipQosPolicyId,
    required this.vipSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVips': additionalVips,
      'adminStateUp': adminStateUp,
      'availabilityZone': availabilityZone,
      'description': description,
      'flavorId': flavorId,
      'id': id,
      'listeners': pulumi.Input.encodeList<GetLoadbalancerV2Listener, Map<String, dynamic>>(listeners, (value) => value.toMap()),
      'loadbalancerId': loadbalancerId,
      'loadbalancerProvider': loadbalancerProvider,
      'name': name,
      'operatingStatus': operatingStatus,
      'pools': pulumi.Input.encodeList<GetLoadbalancerV2Pool, Map<String, dynamic>>(pools, (value) => value.toMap()),
      'projectId': projectId,
      'provisioningStatus': provisioningStatus,
      'region': region,
      'tags': tags,
      'tagsAnies': ?tagsAnies,
      'tagsNotAnies': ?tagsNotAnies,
      'tagsNots': ?tagsNots,
      'vipAddress': vipAddress,
      'vipNetworkId': vipNetworkId,
      'vipPortId': vipPortId,
      'vipQosPolicyId': vipQosPolicyId,
      'vipSubnetId': vipSubnetId,
    };
  }

  factory GetLoadbalancerV2Result.fromMap(Map<String, dynamic> map) {
    return GetLoadbalancerV2Result(
      additionalVips: (map['additionalVips'] as List).cast<String>(),
      adminStateUp: map['adminStateUp'] as bool,
      availabilityZone: map['availabilityZone'] as String,
      description: map['description'] as String,
      flavorId: map['flavorId'] as String,
      id: map['id'] as String,
      listeners: pulumi.Input.decodeList<GetLoadbalancerV2Listener>(map['listeners']!, (value) => GetLoadbalancerV2Listener.fromMap((value as Map).cast<String, dynamic>())),
      loadbalancerId: map['loadbalancerId'] as String,
      loadbalancerProvider: map['loadbalancerProvider'] as String,
      name: map['name'] as String,
      operatingStatus: map['operatingStatus'] as String,
      pools: pulumi.Input.decodeList<GetLoadbalancerV2Pool>(map['pools']!, (value) => GetLoadbalancerV2Pool.fromMap((value as Map).cast<String, dynamic>())),
      projectId: map['projectId'] as String,
      provisioningStatus: map['provisioningStatus'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as List).cast<String>(),
      tagsAnies: (() { final guardedValue = map['tagsAnies']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tagsNotAnies: (() { final guardedValue = map['tagsNotAnies']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tagsNots: (() { final guardedValue = map['tagsNots']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vipAddress: map['vipAddress'] as String,
      vipNetworkId: map['vipNetworkId'] as String,
      vipPortId: map['vipPortId'] as String,
      vipQosPolicyId: map['vipQosPolicyId'] as String,
      vipSubnetId: map['vipSubnetId'] as String,
    );
  }
}

