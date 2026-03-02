// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouterAssociateV2 resources.
class RouterAssociateV2State {
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

  /// Creates a new [RouterAssociateV2State].
  /// [advertiseExtraRoutes] A boolean flag indicating whether extra
  /// [bgpvpnId] The ID of the BGP VPN to which the router will be
  /// [projectId] The ID of the project that owns the BGP VPN router
  /// [region] The region in which to obtain the V2 Networking client.
  /// [routerId] The ID of the router to be associated with the BGP
  RouterAssociateV2State({
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

  factory RouterAssociateV2State.fromMap(Map<String, dynamic> map) {
    return RouterAssociateV2State(
      advertiseExtraRoutes: map['advertiseExtraRoutes'] == null ? null : (map['advertiseExtraRoutes'] as bool).input(),
      bgpvpnId: map['bgpvpnId'] == null ? null : (map['bgpvpnId'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routerId: map['routerId'] == null ? null : (map['routerId'] as String).input(),
    );
  }
}

