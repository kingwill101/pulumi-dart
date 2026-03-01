// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_bgp_connection_bgp_connection_args_doc}
/// The set of arguments for BgpConnection.
/// {@endtemplate}
/// {@macro pulumi_network_bgp_connection_bgp_connection_args_doc}
class BgpConnectionArgs {
  /// The name which should be used for this Virtual Hub Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The peer autonomous system number for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<int> peerAsn;
  /// The peer IP address for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String> peerIp;
  /// The ID of the Virtual Hub within which this Bgp connection should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualHubId;
  /// The ID of virtual network connection.
  final pulumi.Input<String>? virtualNetworkConnectionId;

  /// Creates a new [BgpConnectionArgs].
  /// [name] The name which should be used for this Virtual Hub Bgp Connection. Changing this forces a new resource to be created.
  /// [peerAsn] The peer autonomous system number for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created.
  /// [peerIp] The peer IP address for the Virtual Hub Bgp Connection. Changing this forces a new resource to be created.
  /// [virtualHubId] The ID of the Virtual Hub within which this Bgp connection should be created. Changing this forces a new resource to be created.
  /// [virtualNetworkConnectionId] The ID of virtual network connection.
  BgpConnectionArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<int> peerAsn,
    required pulumi.Output<String> peerIp,
    required pulumi.Output<String> virtualHubId,
    pulumi.Output<String>? virtualNetworkConnectionId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      peerAsn = pulumi.Input.asInput<int>(peerAsn),
      peerIp = pulumi.Input.asInput<String>(peerIp),
      virtualHubId = pulumi.Input.asInput<String>(virtualHubId),
      virtualNetworkConnectionId = pulumi.Input.asOptionalInput<String>(virtualNetworkConnectionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'peerAsn': peerAsn,
      'peerIp': peerIp,
      'virtualHubId': virtualHubId,
      'virtualNetworkConnectionId': ?virtualNetworkConnectionId,
    };
  }

  factory BgpConnectionArgs.fromMap(Map<String, dynamic> map) {
    return BgpConnectionArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peerAsn: pulumi.Output.create<int>(map['peerAsn'] as int),
      peerIp: pulumi.Output.create<String>(map['peerIp'] as String),
      virtualHubId: pulumi.Output.create<String>(map['virtualHubId'] as String),
      virtualNetworkConnectionId: map['virtualNetworkConnectionId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkConnectionId'] as String),
    );
  }
}

