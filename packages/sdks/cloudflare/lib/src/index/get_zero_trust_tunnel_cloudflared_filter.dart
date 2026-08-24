// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustTunnelCloudflaredFilter {
  final pulumi.Input<String?>? excludePrefix;
  /// If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  final pulumi.Input<String?>? existedAt;
  final pulumi.Input<String?>? includePrefix;
  /// If `true`, only include deleted tunnels. If `false`, exclude deleted tunnels. If empty, all tunnels will be included.
  final pulumi.Input<bool?>? isDeleted;
  /// A user-friendly name for a tunnel.
  final pulumi.Input<String?>? name;
  /// The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// Available values: "inactive", "degraded", "healthy", "down".
  final pulumi.Input<String?>? status;
  /// UUID of the tunnel.
  final pulumi.Input<String?>? uuid;
  final pulumi.Input<String?>? wasActiveAt;
  final pulumi.Input<String?>? wasInactiveAt;

  /// Creates a new [GetZeroTrustTunnelCloudflaredFilter].
  /// [excludePrefix] Optional.
  /// [existedAt] If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  /// [includePrefix] Optional.
  /// [isDeleted] If `true`, only include deleted tunnels. If `false`, exclude deleted tunnels. If empty, all tunnels will be included.
  /// [name] A user-friendly name for a tunnel.
  /// [status] The status of the tunnel. Valid values are `inactive` (tunnel has never been run), `degraded` (tunnel is active and able to serve traffic but in an unhealthy state), `healthy` (tunnel is active and able to serve traffic), or `down` (tunnel can not serve traffic as it has no connections to the Cloudflare Edge).
  /// [uuid] UUID of the tunnel.
  /// [wasActiveAt] Optional.
  /// [wasInactiveAt] Optional.
  const GetZeroTrustTunnelCloudflaredFilter({
    this.excludePrefix,
    this.existedAt,
    this.includePrefix,
    this.isDeleted,
    this.name,
    this.status,
    this.uuid,
    this.wasActiveAt,
    this.wasInactiveAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludePrefix': ?excludePrefix,
      'existedAt': ?existedAt,
      'includePrefix': ?includePrefix,
      'isDeleted': ?isDeleted,
      'name': ?name,
      'status': ?status,
      'uuid': ?uuid,
      'wasActiveAt': ?wasActiveAt,
      'wasInactiveAt': ?wasInactiveAt,
    };
  }

  factory GetZeroTrustTunnelCloudflaredFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredFilter(
      excludePrefix: (() { final guardedValue = map['excludePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existedAt: (() { final guardedValue = map['existedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includePrefix: (() { final guardedValue = map['includePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wasActiveAt: (() { final guardedValue = map['wasActiveAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wasInactiveAt: (() { final guardedValue = map['wasInactiveAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
