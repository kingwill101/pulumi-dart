// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_bgp_speaker_v2_bgp_speaker_v2_args_doc}
/// The set of arguments for BgpSpeakerV2.
/// {@endtemplate}
/// {@macro pulumi_networking_bgp_speaker_v2_bgp_speaker_v2_args_doc}
class BgpSpeakerV2Args {
  /// A boolean value indicating
  /// whether to advertise floating IP host routes. Defaults to `true`.
  final pulumi.Input<bool>? advertiseFloatingIpHostRoutes;

  /// A boolean value indicating whether to
  /// advertise tenant networks. Defaults to `true`.
  final pulumi.Input<bool>? advertiseTenantNetworks;

  /// The IP version of the BGP speaker. Valid values are
  /// `4` or `6`. Defaults to `4`. Changing this creates a new BGP speaker.
  final pulumi.Input<int>? ipVersion;

  /// The local autonomous system number (ASN) for the BGP
  /// speaker. This is a mandatory field and must be specified. Changing this
  /// creates a new BGP speaker.
  final pulumi.Input<int> localAs;

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

  /// Creates a new [BgpSpeakerV2Args].
  /// [advertiseFloatingIpHostRoutes] A boolean value indicating
  /// [advertiseTenantNetworks] A boolean value indicating whether to
  /// [ipVersion] The IP version of the BGP speaker. Valid values are
  /// [localAs] The local autonomous system number (ASN) for the BGP
  /// [name] A name for the BGP speaker.
  /// [networks] A list of network IDs to associate with the BGP speaker.
  /// [peers] A list of BGP peer IDs to associate with the BGP speaker.
  /// [region] The region in which to obtain the V2 Networking client.
  /// [tenantId] The tenant/project ID. Required if admin privileges
  BgpSpeakerV2Args({
    this.advertiseFloatingIpHostRoutes,
    this.advertiseTenantNetworks,
    this.ipVersion,
    required this.localAs,
    this.name,
    this.networks,
    this.peers,
    this.region,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseFloatingIpHostRoutes': ?advertiseFloatingIpHostRoutes,
      'advertiseTenantNetworks': ?advertiseTenantNetworks,
      'ipVersion': ?ipVersion,
      'localAs': localAs,
      'name': ?name,
      'networks': ?networks,
      'peers': ?peers,
      'region': ?region,
      'tenantId': ?tenantId,
    };
  }

  factory BgpSpeakerV2Args.fromMap(Map<String, dynamic> map) {
    return BgpSpeakerV2Args(
      advertiseFloatingIpHostRoutes: (() {
        final guardedValue = map['advertiseFloatingIpHostRoutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      advertiseTenantNetworks: (() {
        final guardedValue = map['advertiseTenantNetworks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ipVersion: (() {
        final guardedValue = map['ipVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      localAs: pulumi.Input.fromValue(map['localAs'] as int),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networks: (() {
        final guardedValue = map['networks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      peers: (() {
        final guardedValue = map['peers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
