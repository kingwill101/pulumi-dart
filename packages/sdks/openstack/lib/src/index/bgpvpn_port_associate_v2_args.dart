// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgpvpn_port_associate_v2_route.dart';

/// {@template pulumi_index_bgpvpn_port_associate_v2_bgpvpn_port_associate_v2_args_doc}
/// The set of arguments for BgpvpnPortAssociateV2.
/// {@endtemplate}
/// {@macro pulumi_index_bgpvpn_port_associate_v2_bgpvpn_port_associate_v2_args_doc}
class BgpvpnPortAssociateV2Args {
  /// A boolean flag indicating whether fixed
  /// IPs should be advertised. Defaults to true.
  final pulumi.Input<bool>? advertiseFixedIps;
  /// The ID of the BGP VPN to which the port will be
  /// associated. Changing this creates a new BGP VPN port association.
  final pulumi.Input<String> bgpvpnId;
  /// The ID of the port to be associated with the BGP VPN.
  /// Changing this creates a new BGP VPN port association.
  final pulumi.Input<String> portId;
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

  /// Creates a new [BgpvpnPortAssociateV2Args].
  /// [advertiseFixedIps] A boolean flag indicating whether fixed
  /// [bgpvpnId] The ID of the BGP VPN to which the port will be
  /// [portId] The ID of the port to be associated with the BGP VPN.
  /// [projectId] The ID of the project that owns the port
  /// [region] The region in which to obtain the V2 Networking client.
  /// [routes] A list of dictionaries containing the following keys:
  BgpvpnPortAssociateV2Args({
    this.advertiseFixedIps,
    required this.bgpvpnId,
    required this.portId,
    this.projectId,
    this.region,
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseFixedIps': ?advertiseFixedIps,
      'bgpvpnId': bgpvpnId,
      'portId': portId,
      'projectId': ?projectId,
      'region': ?region,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<BgpvpnPortAssociateV2Route>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<BgpvpnPortAssociateV2Route, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BgpvpnPortAssociateV2Args.fromMap(Map<String, dynamic> map) {
    return BgpvpnPortAssociateV2Args(
      advertiseFixedIps: (() { final guardedValue = map['advertiseFixedIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bgpvpnId: pulumi.Input.fromValue(map['bgpvpnId'] as String),
      portId: pulumi.Input.fromValue(map['portId'] as String),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BgpvpnPortAssociateV2Route>(guardedValue, (value) => BgpvpnPortAssociateV2Route.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

