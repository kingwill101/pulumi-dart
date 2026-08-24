// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustNetworkHostnameRoute resources.
class ZeroTrustNetworkHostnameRouteState {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  /// An optional description of the hostname route.
  final pulumi.Input<String?>? comment;
  /// Timestamp of when the resource was created.
  final pulumi.Input<String?>? createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final pulumi.Input<String?>? deletedAt;
  /// The hostname of the route.
  final pulumi.Input<String?>? hostname;
  /// The type of tunnel.
  /// Available values: "cfd*tunnel", "warp*connector", "warp", "magic", "ipSec", "gre", "cni".
  final pulumi.Input<String?>? tunType;
  /// UUID of the tunnel.
  final pulumi.Input<String?>? tunnelId;
  /// A user-friendly name for a tunnel.
  final pulumi.Input<String?>? tunnelName;

  /// Creates a new [ZeroTrustNetworkHostnameRouteState].
  /// [accountId] Cloudflare account ID
  /// [comment] An optional description of the hostname route.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [hostname] The hostname of the route.
  /// [tunType] The type of tunnel.
  /// [tunnelId] UUID of the tunnel.
  /// [tunnelName] A user-friendly name for a tunnel.
  const ZeroTrustNetworkHostnameRouteState({
    this.accountId,
    this.comment,
    this.createdAt,
    this.deletedAt,
    this.hostname,
    this.tunType,
    this.tunnelId,
    this.tunnelName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comment': ?comment,
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'hostname': ?hostname,
      'tunType': ?tunType,
      'tunnelId': ?tunnelId,
      'tunnelName': ?tunnelName,
    };
  }

  factory ZeroTrustNetworkHostnameRouteState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustNetworkHostnameRouteState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunType: (() { final guardedValue = map['tunType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelName: (() { final guardedValue = map['tunnelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
