// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustTunnelCloudflaredRoutesResult {
  /// Optional remark describing the route.
  final pulumi.Input<String> comment;
  /// Timestamp of when the resource was created.
  final pulumi.Input<String> createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final pulumi.Input<String> deletedAt;
  /// UUID of the route.
  final pulumi.Input<String> id;
  /// The private IPv4 or IPv6 range connected by the route, in CIDR notation.
  final pulumi.Input<String> network;
  /// The type of tunnel.
  /// Available values: "cfd*tunnel", "warp*connector", "warp", "magic", "ipSec", "gre", "cni".
  final pulumi.Input<String> tunType;
  /// UUID of the tunnel.
  final pulumi.Input<String> tunnelId;
  /// A user-friendly name for a tunnel.
  final pulumi.Input<String> tunnelName;
  /// UUID of the virtual network.
  final pulumi.Input<String> virtualNetworkId;
  /// A user-friendly name for the virtual network.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [GetZeroTrustTunnelCloudflaredRoutesResult].
  /// [comment] Optional remark describing the route.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [id] UUID of the route.
  /// [network] The private IPv4 or IPv6 range connected by the route, in CIDR notation.
  /// [tunType] The type of tunnel.
  /// [tunnelId] UUID of the tunnel.
  /// [tunnelName] A user-friendly name for a tunnel.
  /// [virtualNetworkId] UUID of the virtual network.
  /// [virtualNetworkName] A user-friendly name for the virtual network.
  const GetZeroTrustTunnelCloudflaredRoutesResult({
    required this.comment,
    required this.createdAt,
    required this.deletedAt,
    required this.id,
    required this.network,
    required this.tunType,
    required this.tunnelId,
    required this.tunnelName,
    required this.virtualNetworkId,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'createdAt': createdAt,
      'deletedAt': deletedAt,
      'id': id,
      'network': network,
      'tunType': tunType,
      'tunnelId': tunnelId,
      'tunnelName': tunnelName,
      'virtualNetworkId': virtualNetworkId,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory GetZeroTrustTunnelCloudflaredRoutesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredRoutesResult(
      comment: pulumi.Input.fromValue(map['comment'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      deletedAt: pulumi.Input.fromValue(map['deletedAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      tunType: pulumi.Input.fromValue(map['tunType'] as String),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
      tunnelName: pulumi.Input.fromValue(map['tunnelName'] as String),
      virtualNetworkId: pulumi.Input.fromValue(map['virtualNetworkId'] as String),
      virtualNetworkName: pulumi.Input.fromValue(map['virtualNetworkName'] as String),
    );
  }
}
