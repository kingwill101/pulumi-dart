// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustTunnelCloudflaredVirtualNetworksResult {
  /// Optional remark describing the virtual network.
  final pulumi.Input<String> comment;
  /// Timestamp of when the resource was created.
  final pulumi.Input<String> createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final pulumi.Input<String> deletedAt;
  /// UUID of the virtual network.
  final pulumi.Input<String> id;
  /// If `true`, this virtual network is the default for the account.
  final pulumi.Input<bool> isDefaultNetwork;
  /// A user-friendly name for the virtual network.
  final pulumi.Input<String> name;

  /// Creates a new [GetZeroTrustTunnelCloudflaredVirtualNetworksResult].
  /// [comment] Optional remark describing the virtual network.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [id] UUID of the virtual network.
  /// [isDefaultNetwork] If `true`, this virtual network is the default for the account.
  /// [name] A user-friendly name for the virtual network.
  const GetZeroTrustTunnelCloudflaredVirtualNetworksResult({
    required this.comment,
    required this.createdAt,
    required this.deletedAt,
    required this.id,
    required this.isDefaultNetwork,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'createdAt': createdAt,
      'deletedAt': deletedAt,
      'id': id,
      'isDefaultNetwork': isDefaultNetwork,
      'name': name,
    };
  }

  factory GetZeroTrustTunnelCloudflaredVirtualNetworksResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredVirtualNetworksResult(
      comment: pulumi.Input.fromValue(map['comment'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      deletedAt: pulumi.Input.fromValue(map['deletedAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isDefaultNetwork: pulumi.Input.fromValue(map['isDefaultNetwork'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
