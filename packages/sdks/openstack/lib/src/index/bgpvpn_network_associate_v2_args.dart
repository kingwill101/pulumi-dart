// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_bgpvpn_network_associate_v2_bgpvpn_network_associate_v2_args_doc}
/// The set of arguments for BgpvpnNetworkAssociateV2.
/// {@endtemplate}
/// {@macro pulumi_index_bgpvpn_network_associate_v2_bgpvpn_network_associate_v2_args_doc}
class BgpvpnNetworkAssociateV2Args {
  /// The ID of the BGP VPN to which the network will be
  /// associated. Changing this creates a new BGP VPN network association
  final pulumi.Input<String> bgpvpnId;
  /// The ID of the network to be associated with the BGP
  /// VPN. Changing this creates a new BGP VPN network association.
  final pulumi.Input<String> networkId;
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

  /// Creates a new [BgpvpnNetworkAssociateV2Args].
  /// [bgpvpnId] The ID of the BGP VPN to which the network will be
  /// [networkId] The ID of the network to be associated with the BGP
  /// [projectId] The ID of the project that owns the BGP VPN network
  /// [region] The region in which to obtain the V2 Networking client.
  const BgpvpnNetworkAssociateV2Args({
    required this.bgpvpnId,
    required this.networkId,
    this.projectId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpvpnId': bgpvpnId,
      'networkId': networkId,
      'projectId': ?projectId,
      'region': ?region,
    };
  }

  factory BgpvpnNetworkAssociateV2Args.fromMap(Map<String, dynamic> map) {
    return BgpvpnNetworkAssociateV2Args(
      bgpvpnId: pulumi.Input.fromValue(map['bgpvpnId'] as String),
      networkId: pulumi.Input.fromValue(map['networkId'] as String),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

