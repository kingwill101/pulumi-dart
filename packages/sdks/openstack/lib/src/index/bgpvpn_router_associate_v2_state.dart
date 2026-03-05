// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BgpvpnRouterAssociateV2 resources.
class BgpvpnRouterAssociateV2State {
  /// A boolean flag indicating whether extra
  /// routes should be advertised. Defaults to true.
  final pulumi.Input<bool>? advertiseExtraRoutes;
  /// The ID of the BGP VPN to which the router will be
  /// associated. Changing this creates a new BGP VPN router association.
  final pulumi.Input<String>? bgpvpnId;
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
  final pulumi.Input<String>? routerId;

  /// Creates a new [BgpvpnRouterAssociateV2State].
  /// [advertiseExtraRoutes] A boolean flag indicating whether extra
  /// [bgpvpnId] The ID of the BGP VPN to which the router will be
  /// [projectId] The ID of the project that owns the BGP VPN router
  /// [region] The region in which to obtain the V2 Networking client.
  /// [routerId] The ID of the router to be associated with the BGP
  BgpvpnRouterAssociateV2State({
    this.advertiseExtraRoutes,
    this.bgpvpnId,
    this.projectId,
    this.region,
    this.routerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseExtraRoutes': ?advertiseExtraRoutes,
      'bgpvpnId': ?bgpvpnId,
      'projectId': ?projectId,
      'region': ?region,
      'routerId': ?routerId,
    };
  }

  factory BgpvpnRouterAssociateV2State.fromMap(Map<String, dynamic> map) {
    return BgpvpnRouterAssociateV2State(
      advertiseExtraRoutes: (() { final guardedValue = map['advertiseExtraRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bgpvpnId: (() { final guardedValue = map['bgpvpnId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerId: (() { final guardedValue = map['routerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

