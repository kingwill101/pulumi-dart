// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BgpConnection resources.
class BgpConnectionState {
  /// The name which should be used for this Virtual Hub Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The peer autonomous system number for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<int>? peerAsn;
  /// The peer IP address for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? peerIp;
  /// The ID of the Virtual Hub within which this Bgp connection should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualHubId;
  /// The ID of virtual network connection.
  final pulumi.Input<String>? virtualNetworkConnectionId;

  /// Creates a new [BgpConnectionState].
  /// [name] The name which should be used for this Virtual Hub Bgp Connection. Changing this forces a new resource to be created.
  /// [peerAsn] The peer autonomous system number for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created.
  /// [peerIp] The peer IP address for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created.
  /// [virtualHubId] The ID of the Virtual Hub within which this Bgp connection should be created. Changing this forces a new resource to be created.
  /// [virtualNetworkConnectionId] The ID of virtual network connection.
  BgpConnectionState({
    this.name,
    this.peerAsn,
    this.peerIp,
    this.virtualHubId,
    this.virtualNetworkConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'peerAsn': ?peerAsn,
      'peerIp': ?peerIp,
      'virtualHubId': ?virtualHubId,
      'virtualNetworkConnectionId': ?virtualNetworkConnectionId,
    };
  }

  factory BgpConnectionState.fromMap(Map<String, dynamic> map) {
    return BgpConnectionState(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      peerAsn: map['peerAsn'] == null ? null : (map['peerAsn'] as int).input(),
      peerIp: map['peerIp'] == null ? null : (map['peerIp'] as String).input(),
      virtualHubId: map['virtualHubId'] == null ? null : (map['virtualHubId'] as String).input(),
      virtualNetworkConnectionId: map['virtualNetworkConnectionId'] == null ? null : (map['virtualNetworkConnectionId'] as String).input(),
    );
  }
}

