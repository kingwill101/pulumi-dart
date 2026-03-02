// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteServerBgpConnection resources.
class RouteServerBgpConnectionState {
  /// The name which should be used for this Route Server Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The peer autonomous system number for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<int>? peerAsn;
  /// The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? peerIp;
  /// The ID of the Route Server within which this Bgp connection should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? routeServerId;

  /// Creates a new [RouteServerBgpConnectionState].
  /// [name] The name which should be used for this Route Server Bgp Connection. Changing this forces a new resource to be created.
  /// [peerAsn] The peer autonomous system number for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  /// [peerIp] The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  /// [routeServerId] The ID of the Route Server within which this Bgp connection should be created. Changing this forces a new resource to be created.
  RouteServerBgpConnectionState({
    this.name,
    this.peerAsn,
    this.peerIp,
    this.routeServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'peerAsn': ?peerAsn,
      'peerIp': ?peerIp,
      'routeServerId': ?routeServerId,
    };
  }

  factory RouteServerBgpConnectionState.fromMap(Map<String, dynamic> map) {
    return RouteServerBgpConnectionState(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      peerAsn: map['peerAsn'] == null ? null : (map['peerAsn']! as int).input(),
      peerIp: map['peerIp'] == null ? null : (map['peerIp']! as String).input(),
      routeServerId: map['routeServerId'] == null ? null : (map['routeServerId']! as String).input(),
    );
  }
}

