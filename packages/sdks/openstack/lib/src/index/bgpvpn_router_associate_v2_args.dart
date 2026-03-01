// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_bgpvpn_router_associate_v2_bgpvpn_router_associate_v2_args_doc}
/// The set of arguments for BgpvpnRouterAssociateV2.
/// {@endtemplate}
/// {@macro pulumi_index_bgpvpn_router_associate_v2_bgpvpn_router_associate_v2_args_doc}
class BgpvpnRouterAssociateV2Args {
  /// A boolean flag indicating whether extra
  /// routes should be advertised. Defaults to true.
  final pulumi.Input<bool>? advertiseExtraRoutes;
  /// The ID of the BGP VPN to which the router will be
  /// associated. Changing this creates a new BGP VPN router association.
  final pulumi.Input<String> bgpvpnId;
  /// The ID of the project that owns the BGP VPN router
  /// association. Only administrative and users with `advsvc` role can specify a
  /// project ID other than their own. Changing this creates a new BGP VPN router
  /// association.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a BGP VPN router association. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new BGP VPN router association.
  final pulumi.Input<String>? region;
  /// The ID of the router to be associated with the BGP
  /// VPN. Changing this creates a new BGP VPN router association.
  final pulumi.Input<String> routerId;

  /// Creates a new [BgpvpnRouterAssociateV2Args].
  /// [advertiseExtraRoutes] A boolean flag indicating whether extra
  /// [bgpvpnId] The ID of the BGP VPN to which the router will be
  /// [projectId] The ID of the project that owns the BGP VPN router
  /// [region] The region in which to obtain the V2 Networking client.
  /// [routerId] The ID of the router to be associated with the BGP
  BgpvpnRouterAssociateV2Args({
    pulumi.Output<bool>? advertiseExtraRoutes,
    required pulumi.Output<String> bgpvpnId,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> routerId,
  }) :
      advertiseExtraRoutes = pulumi.Input.asOptionalInput<bool>(advertiseExtraRoutes),
      bgpvpnId = pulumi.Input.asInput<String>(bgpvpnId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      routerId = pulumi.Input.asInput<String>(routerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseExtraRoutes': ?advertiseExtraRoutes,
      'bgpvpnId': bgpvpnId,
      'projectId': ?projectId,
      'region': ?region,
      'routerId': routerId,
    };
  }

  factory BgpvpnRouterAssociateV2Args.fromMap(Map<String, dynamic> map) {
    return BgpvpnRouterAssociateV2Args(
      advertiseExtraRoutes: map['advertiseExtraRoutes'] == null ? null : pulumi.Output.create<bool>(map['advertiseExtraRoutes'] as bool),
      bgpvpnId: pulumi.Output.create<String>(map['bgpvpnId'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routerId: pulumi.Output.create<String>(map['routerId'] as String),
    );
  }
}

