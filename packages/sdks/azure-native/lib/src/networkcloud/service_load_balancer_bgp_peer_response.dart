// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceLoadBalancerBgpPeerResponse {
  /// The indicator of BFD enablement for this BgpPeer.
  final pulumi.Input<String>? bfdEnabled;
  /// The indicator to enable multi-hop peering support.
  final pulumi.Input<String>? bgpMultiHop;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The requested BGP hold time value. This field uses ISO 8601 duration format, for example P1H.
  final pulumi.Input<String>? holdTime;
  /// Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The requested BGP keepalive time value. This field uses ISO 8601 duration format, for example P1H.
  final pulumi.Input<String>? keepAliveTime;
  /// The autonomous system number used for the local end of the BGP session.
  final pulumi.Input<double>? myAsn;
  /// The name used to identify this BGP peer for association with a BGP advertisement.
  final pulumi.Input<String> name;
  /// The IPv4 or IPv6 address used to connect this BGP session.
  final pulumi.Input<String> peerAddress;
  /// The autonomous system number expected from the remote end of the BGP session.
  final pulumi.Input<double> peerAsn;
  /// The port used to connect this BGP session.
  final pulumi.Input<double>? peerPort;

  /// Creates a new [ServiceLoadBalancerBgpPeerResponse].
  /// [bfdEnabled] The indicator of BFD enablement for this BgpPeer.
  /// [bgpMultiHop] The indicator to enable multi-hop peering support.
  /// [holdTime] Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The requested BGP hold time value. This field uses ISO 8601 duration format, for example P1H.
  /// [keepAliveTime] Field Deprecated. The field was previously optional, now it will have no defined behavior and will be ignored. The requested BGP keepalive time value. This field uses ISO 8601 duration format, for example P1H.
  /// [myAsn] The autonomous system number used for the local end of the BGP session.
  /// [name] The name used to identify this BGP peer for association with a BGP advertisement.
  /// [peerAddress] The IPv4 or IPv6 address used to connect this BGP session.
  /// [peerAsn] The autonomous system number expected from the remote end of the BGP session.
  /// [peerPort] The port used to connect this BGP session.
  const ServiceLoadBalancerBgpPeerResponse({
    this.bfdEnabled,
    this.bgpMultiHop,
    this.holdTime,
    this.keepAliveTime,
    this.myAsn,
    required this.name,
    required this.peerAddress,
    required this.peerAsn,
    this.peerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bfdEnabled': ?bfdEnabled,
      'bgpMultiHop': ?bgpMultiHop,
      'holdTime': ?holdTime,
      'keepAliveTime': ?keepAliveTime,
      'myAsn': ?myAsn,
      'name': name,
      'peerAddress': peerAddress,
      'peerAsn': peerAsn,
      'peerPort': ?peerPort,
    };
  }

  factory ServiceLoadBalancerBgpPeerResponse.fromMap(Map<String, dynamic> map) {
    return ServiceLoadBalancerBgpPeerResponse(
      bfdEnabled: (() { final guardedValue = map['bfdEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpMultiHop: (() { final guardedValue = map['bgpMultiHop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      holdTime: (() { final guardedValue = map['holdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keepAliveTime: (() { final guardedValue = map['keepAliveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      myAsn: (() { final guardedValue = map['myAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      peerAddress: pulumi.Input.fromValue(map['peerAddress'] as String),
      peerAsn: pulumi.Input.fromValue(map['peerAsn'] as double),
      peerPort: (() { final guardedValue = map['peerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

