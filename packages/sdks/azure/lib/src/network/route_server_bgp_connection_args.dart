// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_route_server_bgp_connection_route_server_bgp_connection_args_doc}
/// The set of arguments for RouteServerBgpConnection.
/// {@endtemplate}
/// {@macro pulumi_network_route_server_bgp_connection_route_server_bgp_connection_args_doc}
class RouteServerBgpConnectionArgs {
  /// The name which should be used for this Route Server Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The peer autonomous system number for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<int> peerAsn;
  /// The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String> peerIp;
  /// The ID of the Route Server within which this Bgp connection should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> routeServerId;

  /// Creates a new [RouteServerBgpConnectionArgs].
  /// [name] The name which should be used for this Route Server Bgp Connection. Changing this forces a new resource to be created.
  /// [peerAsn] The peer autonomous system number for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  /// [peerIp] The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  /// [routeServerId] The ID of the Route Server within which this Bgp connection should be created. Changing this forces a new resource to be created.
  RouteServerBgpConnectionArgs({
    this.name,
    required this.peerAsn,
    required this.peerIp,
    required this.routeServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'peerAsn': peerAsn,
      'peerIp': peerIp,
      'routeServerId': routeServerId,
    };
  }

  factory RouteServerBgpConnectionArgs.fromMap(Map<String, dynamic> map) {
    return RouteServerBgpConnectionArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerAsn: pulumi.Input.fromValue(map['peerAsn'] as int),
      peerIp: pulumi.Input.fromValue(map['peerIp'] as String),
      routeServerId: pulumi.Input.fromValue(map['routeServerId'] as String),
    );
  }
}

