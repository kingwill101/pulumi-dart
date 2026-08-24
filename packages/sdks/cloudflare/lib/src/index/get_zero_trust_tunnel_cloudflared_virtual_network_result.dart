// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_tunnel_cloudflared_virtual_network_filter.dart';

/// Result data returned by getZeroTrustTunnelCloudflaredVirtualNetwork.
class GetZeroTrustTunnelCloudflaredVirtualNetworkResult {
  /// Cloudflare account ID
  final String? accountId;
  /// Optional remark describing the virtual network.
  final String? comment;
  /// Timestamp of when the resource was created.
  final String? createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final String? deletedAt;
  final GetZeroTrustTunnelCloudflaredVirtualNetworkFilter? filter;
  /// UUID of the virtual network.
  final String? id;
  /// If `true`, this virtual network is the default for the account.
  final bool? isDefaultNetwork;
  /// A user-friendly name for the virtual network.
  final String? name;
  /// UUID of the virtual network.
  final String? virtualNetworkId;

  /// Creates a new [GetZeroTrustTunnelCloudflaredVirtualNetworkResult].
  /// [accountId] Cloudflare account ID
  /// [comment] Optional remark describing the virtual network.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [filter] Optional.
  /// [id] UUID of the virtual network.
  /// [isDefaultNetwork] If `true`, this virtual network is the default for the account.
  /// [name] A user-friendly name for the virtual network.
  /// [virtualNetworkId] UUID of the virtual network.
  const GetZeroTrustTunnelCloudflaredVirtualNetworkResult({
    this.accountId,
    this.comment,
    this.createdAt,
    this.deletedAt,
    this.filter,
    this.id,
    this.isDefaultNetwork,
    this.name,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comment': ?comment,
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'isDefaultNetwork': ?isDefaultNetwork,
      'name': ?name,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory GetZeroTrustTunnelCloudflaredVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredVirtualNetworkResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustTunnelCloudflaredVirtualNetworkFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDefaultNetwork: (() { final guardedValue = map['isDefaultNetwork']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
