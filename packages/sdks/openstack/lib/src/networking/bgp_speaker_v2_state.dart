// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_speaker_v2_advertised_route.dart';

/// Input properties used for looking up and filtering BgpSpeakerV2 resources.
class BgpSpeakerV2State {
  /// A boolean value indicating
  /// whether to advertise floating IP host routes. Defaults to `true`.
  final pulumi.Input<bool>? advertiseFloatingIpHostRoutes;
  /// A boolean value indicating whether to
  /// advertise tenant networks. Defaults to `true`.
  final pulumi.Input<bool>? advertiseTenantNetworks;
  /// A list of dictionaries containing the `destination` and
  /// `next_hop` for each route advertised by the BGP speaker. This attribute is
  /// only populated after the BGP speaker has been created and has established BGP
  /// sessions with its peers.
  final pulumi.Input<List<BgpSpeakerV2AdvertisedRoute>>? advertisedRoutes;
  /// The IP version of the BGP speaker. Valid values are
  /// `4` or `6`. Defaults to `4`. Changing this creates a new BGP speaker.
  final pulumi.Input<int>? ipVersion;
  /// The local autonomous system number (ASN) for the BGP
  /// speaker. This is a mandatory field and must be specified. Changing this
  /// creates a new BGP speaker.
  final pulumi.Input<int>? localAs;
  /// A name for the BGP speaker.
  final pulumi.Input<String>? name;
  /// A list of network IDs to associate with the BGP speaker.
  final pulumi.Input<List<String>>? networks;
  /// A list of BGP peer IDs to associate with the BGP speaker.
  final pulumi.Input<List<String>>? peers;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new BGP
  /// speaker.
  final pulumi.Input<String>? region;
  /// The tenant/project ID. Required if admin privileges
  /// are used. Changing this creates a new BGP speaker.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [BgpSpeakerV2State].
  /// [advertiseFloatingIpHostRoutes] A boolean value indicating
  /// [advertiseTenantNetworks] A boolean value indicating whether to
  /// [advertisedRoutes] A list of dictionaries containing the `destination` and
  /// [ipVersion] The IP version of the BGP speaker. Valid values are
  /// [localAs] The local autonomous system number (ASN) for the BGP
  /// [name] A name for the BGP speaker.
  /// [networks] A list of network IDs to associate with the BGP speaker.
  /// [peers] A list of BGP peer IDs to associate with the BGP speaker.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [tenantId] The tenant/project ID. Required if admin privileges
  BgpSpeakerV2State({
    pulumi.Output<bool>? advertiseFloatingIpHostRoutes,
    pulumi.Output<bool>? advertiseTenantNetworks,
    pulumi.Output<List<BgpSpeakerV2AdvertisedRoute>>? advertisedRoutes,
    pulumi.Output<int>? ipVersion,
    pulumi.Output<int>? localAs,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? networks,
    pulumi.Output<List<String>>? peers,
    pulumi.Output<String>? region,
    pulumi.Output<String>? tenantId,
  }) :
      advertiseFloatingIpHostRoutes = pulumi.Input.asOptionalInput<bool>(advertiseFloatingIpHostRoutes),
      advertiseTenantNetworks = pulumi.Input.asOptionalInput<bool>(advertiseTenantNetworks),
      advertisedRoutes = pulumi.Input.asOptionalInput<List<BgpSpeakerV2AdvertisedRoute>>(advertisedRoutes),
      ipVersion = pulumi.Input.asOptionalInput<int>(ipVersion),
      localAs = pulumi.Input.asOptionalInput<int>(localAs),
      name = pulumi.Input.asOptionalInput<String>(name),
      networks = pulumi.Input.asOptionalInput<List<String>>(networks),
      peers = pulumi.Input.asOptionalInput<List<String>>(peers),
      region = pulumi.Input.asOptionalInput<String>(region),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseFloatingIpHostRoutes': ?advertiseFloatingIpHostRoutes,
      'advertiseTenantNetworks': ?advertiseTenantNetworks,
      'advertisedRoutes': ?pulumi.Input.mapOptionalInputValue<List<BgpSpeakerV2AdvertisedRoute>, List<Map<String, dynamic>>>(advertisedRoutes, (value) => pulumi.Input.encodeList<BgpSpeakerV2AdvertisedRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipVersion': ?ipVersion,
      'localAs': ?localAs,
      'name': ?name,
      'networks': ?networks,
      'peers': ?peers,
      'region': ?region,
      'tenantId': ?tenantId,
    };
  }

  factory BgpSpeakerV2State.fromMap(Map<String, dynamic> map) {
    return BgpSpeakerV2State(
      advertiseFloatingIpHostRoutes: map['advertiseFloatingIpHostRoutes'] == null ? null : pulumi.Output.create<bool>(map['advertiseFloatingIpHostRoutes'] as bool),
      advertiseTenantNetworks: map['advertiseTenantNetworks'] == null ? null : pulumi.Output.create<bool>(map['advertiseTenantNetworks'] as bool),
      advertisedRoutes: map['advertisedRoutes'] == null ? null : pulumi.Output.create<List<BgpSpeakerV2AdvertisedRoute>>(pulumi.Input.decodeList<BgpSpeakerV2AdvertisedRoute>(map['advertisedRoutes'], (value) => BgpSpeakerV2AdvertisedRoute.fromMap((value as Map).cast<String, dynamic>()))),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<int>(map['ipVersion'] as int),
      localAs: map['localAs'] == null ? null : pulumi.Output.create<int>(map['localAs'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networks: map['networks'] == null ? null : pulumi.Output.create<List<String>>((map['networks'] as List).cast<String>()),
      peers: map['peers'] == null ? null : pulumi.Output.create<List<String>>((map['peers'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

