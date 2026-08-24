// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_tunnel_cloudflareds_get_zero_trust_tunnel_cloudflareds_args_doc}
/// Arguments for getZeroTrustTunnelCloudflareds.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_tunnel_cloudflareds_get_zero_trust_tunnel_cloudflareds_args_doc}
class GetZeroTrustTunnelCloudflaredsArgs {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? excludePrefix;
  /// If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  final pulumi.Input<String?>? existedAt;
  final pulumi.Input<String?>? includePrefix;
  /// If `true`, only include deleted tunnels. If `false`, exclude deleted tunnels. If empty, all tunnels will be included.
  final pulumi.Input<bool?>? isDeleted;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// A user-friendly name for a tunnel.
  final pulumi.Input<String?>? name;
  /// The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// Available values: "inactive", "degraded", "healthy", "down".
  final pulumi.Input<String?>? status;
  /// UUID of the tunnel.
  final pulumi.Input<String?>? uuid;
  final pulumi.Input<String?>? wasActiveAt;
  final pulumi.Input<String?>? wasInactiveAt;

  /// Creates a new [GetZeroTrustTunnelCloudflaredsArgs].
  /// [accountId] Cloudflare account ID
  /// [excludePrefix] Optional.
  /// [existedAt] If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  /// [includePrefix] Optional.
  /// [isDeleted] If `true`, only include deleted tunnels. If `false`, exclude deleted tunnels. If empty, all tunnels will be included.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] A user-friendly name for a tunnel.
  /// [status] The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// [uuid] UUID of the tunnel.
  /// [wasActiveAt] Optional.
  /// [wasInactiveAt] Optional.
  const GetZeroTrustTunnelCloudflaredsArgs({
    this.accountId,
    this.excludePrefix,
    this.existedAt,
    this.includePrefix,
    this.isDeleted,
    this.maxItems,
    this.name,
    this.status,
    this.uuid,
    this.wasActiveAt,
    this.wasInactiveAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'excludePrefix': ?excludePrefix,
      'existedAt': ?existedAt,
      'includePrefix': ?includePrefix,
      'isDeleted': ?isDeleted,
      'maxItems': ?maxItems,
      'name': ?name,
      'status': ?status,
      'uuid': ?uuid,
      'wasActiveAt': ?wasActiveAt,
      'wasInactiveAt': ?wasInactiveAt,
    };
  }

  factory GetZeroTrustTunnelCloudflaredsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludePrefix: (() { final guardedValue = map['excludePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existedAt: (() { final guardedValue = map['existedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includePrefix: (() { final guardedValue = map['includePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wasActiveAt: (() { final guardedValue = map['wasActiveAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wasInactiveAt: (() { final guardedValue = map['wasInactiveAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
