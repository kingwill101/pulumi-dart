// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustTunnelCloudflaredRoute resources.
class ZeroTrustTunnelCloudflaredRouteState {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  /// Optional remark describing the route.
  final pulumi.Input<String?>? comment;
  /// Timestamp of when the resource was created.
  final pulumi.Input<String?>? createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final pulumi.Input<String?>? deletedAt;
  /// The private IPv4 or IPv6 range connected by the route, in CIDR notation.
  final pulumi.Input<String?>? network;
  /// UUID of the tunnel.
  final pulumi.Input<String?>? tunnelId;
  /// UUID of the virtual network.
  final pulumi.Input<String?>? virtualNetworkId;

  /// Creates a new [ZeroTrustTunnelCloudflaredRouteState].
  /// [accountId] Cloudflare account ID
  /// [comment] Optional remark describing the route.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [network] The private IPv4 or IPv6 range connected by the route, in CIDR notation.
  /// [tunnelId] UUID of the tunnel.
  /// [virtualNetworkId] UUID of the virtual network.
  const ZeroTrustTunnelCloudflaredRouteState({
    this.accountId,
    this.comment,
    this.createdAt,
    this.deletedAt,
    this.network,
    this.tunnelId,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comment': ?comment,
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'network': ?network,
      'tunnelId': ?tunnelId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory ZeroTrustTunnelCloudflaredRouteState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustTunnelCloudflaredRouteState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
