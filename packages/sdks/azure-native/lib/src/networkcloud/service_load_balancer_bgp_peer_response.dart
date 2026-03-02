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
  ServiceLoadBalancerBgpPeerResponse({
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
      bfdEnabled: map['bfdEnabled'] == null ? null : (map['bfdEnabled'] as String).input(),
      bgpMultiHop: map['bgpMultiHop'] == null ? null : (map['bgpMultiHop'] as String).input(),
      holdTime: map['holdTime'] == null ? null : (map['holdTime'] as String).input(),
      keepAliveTime: map['keepAliveTime'] == null ? null : (map['keepAliveTime'] as String).input(),
      myAsn: map['myAsn'] == null ? null : (map['myAsn'] as double).input(),
      name: (map['name'] as String).input(),
      peerAddress: (map['peerAddress'] as String).input(),
      peerAsn: (map['peerAsn'] as double).input(),
      peerPort: map['peerPort'] == null ? null : (map['peerPort'] as double).input(),
    );
  }
}

