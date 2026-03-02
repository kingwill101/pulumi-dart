// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BgpvpnNetworkAssociateV2 resources.
class BgpvpnNetworkAssociateV2State {
  /// The ID of the BGP VPN to which the network will be
  /// associated. Changing this creates a new BGP VPN network association
  final pulumi.Input<String>? bgpvpnId;
  /// The ID of the network to be associated with the BGP
  /// VPN. Changing this creates a new BGP VPN network association.
  final pulumi.Input<String>? networkId;
  /// The ID of the project that owns the BGP VPN network
  /// association. Only administrative and users with `advsvc` role can specify a
  /// project ID other than their own. Changing this creates a new BGP VPN network
  /// association.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a BGP VPN network association. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new BGP VPN network association.
  final pulumi.Input<String>? region;

  /// Creates a new [BgpvpnNetworkAssociateV2State].
  /// [bgpvpnId] The ID of the BGP VPN to which the network will be
  /// [networkId] The ID of the network to be associated with the BGP
  /// [projectId] The ID of the project that owns the BGP VPN network
  /// [region] The region in which to obtain the V2 Networking client.
  BgpvpnNetworkAssociateV2State({
    this.bgpvpnId,
    this.networkId,
    this.projectId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpvpnId': ?bgpvpnId,
      'networkId': ?networkId,
      'projectId': ?projectId,
      'region': ?region,
    };
  }

  factory BgpvpnNetworkAssociateV2State.fromMap(Map<String, dynamic> map) {
    return BgpvpnNetworkAssociateV2State(
      bgpvpnId: map['bgpvpnId'] == null ? null : (map['bgpvpnId']! as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

