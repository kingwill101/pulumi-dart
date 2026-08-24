// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustNetworkHostnameRoutesResult {
  /// An optional description of the hostname route.
  final pulumi.Input<String> comment;
  /// Timestamp of when the resource was created.
  final pulumi.Input<String> createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final pulumi.Input<String> deletedAt;
  /// The hostname of the route.
  final pulumi.Input<String> hostname;
  /// The hostname route ID.
  final pulumi.Input<String> id;
  /// The type of tunnel.
  /// Available values: "cfd*tunnel", "warp*connector", "warp", "magic", "ipSec", "gre", "cni".
  final pulumi.Input<String> tunType;
  /// UUID of the tunnel.
  final pulumi.Input<String> tunnelId;
  /// A user-friendly name for a tunnel.
  final pulumi.Input<String> tunnelName;

  /// Creates a new [GetZeroTrustNetworkHostnameRoutesResult].
  /// [comment] An optional description of the hostname route.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [hostname] The hostname of the route.
  /// [id] The hostname route ID.
  /// [tunType] The type of tunnel.
  /// [tunnelId] UUID of the tunnel.
  /// [tunnelName] A user-friendly name for a tunnel.
  const GetZeroTrustNetworkHostnameRoutesResult({
    required this.comment,
    required this.createdAt,
    required this.deletedAt,
    required this.hostname,
    required this.id,
    required this.tunType,
    required this.tunnelId,
    required this.tunnelName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'createdAt': createdAt,
      'deletedAt': deletedAt,
      'hostname': hostname,
      'id': id,
      'tunType': tunType,
      'tunnelId': tunnelId,
      'tunnelName': tunnelName,
    };
  }

  factory GetZeroTrustNetworkHostnameRoutesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustNetworkHostnameRoutesResult(
      comment: pulumi.Input.fromValue(map['comment'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      deletedAt: pulumi.Input.fromValue(map['deletedAt'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      tunType: pulumi.Input.fromValue(map['tunType'] as String),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
      tunnelName: pulumi.Input.fromValue(map['tunnelName'] as String),
    );
  }
}
