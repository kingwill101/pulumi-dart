// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgpvpn_port_associate_v2_route.dart';

/// Input properties used for looking up and filtering BgpvpnPortAssociateV2 resources.
class BgpvpnPortAssociateV2State {
  /// A boolean flag indicating whether fixed
  /// IPs should be advertised. Defaults to true.
  final pulumi.Input<bool>? advertiseFixedIps;
  /// The ID of the BGP VPN to which the port will be
  /// associated. Changing this creates a new BGP VPN port association.
  final pulumi.Input<String>? bgpvpnId;
  /// The ID of the port to be associated with the BGP VPN.
  /// Changing this creates a new BGP VPN port association.
  final pulumi.Input<String>? portId;
  /// The ID of the project that owns the port
  /// association. Only administrative and users with `advsvc` role can specify a
  /// project ID other than their own. Changing this creates a new BGP VPN port
  /// association.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a BGP VPN port association. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// a new BGP VPN port association.
  final pulumi.Input<String>? region;
  /// A list of dictionaries containing the following keys:
  final pulumi.Input<List<BgpvpnPortAssociateV2Route>>? routes;

  /// Creates a new [BgpvpnPortAssociateV2State].
  /// [advertiseFixedIps] A boolean flag indicating whether fixed
  /// [bgpvpnId] The ID of the BGP VPN to which the port will be
  /// [portId] The ID of the port to be associated with the BGP VPN.
  /// [projectId] The ID of the project that owns the port
  /// [region] The region in which to obtain the V2 Networking client.
  /// [routes] A list of dictionaries containing the following keys:
  BgpvpnPortAssociateV2State({
    this.advertiseFixedIps,
    this.bgpvpnId,
    this.portId,
    this.projectId,
    this.region,
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseFixedIps': ?advertiseFixedIps,
      'bgpvpnId': ?bgpvpnId,
      'portId': ?portId,
      'projectId': ?projectId,
      'region': ?region,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<BgpvpnPortAssociateV2Route>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<BgpvpnPortAssociateV2Route, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BgpvpnPortAssociateV2State.fromMap(Map<String, dynamic> map) {
    return BgpvpnPortAssociateV2State(
      advertiseFixedIps: map['advertiseFixedIps'] == null ? null : (map['advertiseFixedIps'] as bool).input(),
      bgpvpnId: map['bgpvpnId'] == null ? null : (map['bgpvpnId'] as String).input(),
      portId: map['portId'] == null ? null : (map['portId'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<BgpvpnPortAssociateV2Route>(map['routes'], (value) => BgpvpnPortAssociateV2Route.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

