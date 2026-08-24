// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_network_hostname_routes_get_zero_trust_network_hostname_routes_args_doc}
/// Arguments for getZeroTrustNetworkHostnameRoutes.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_network_hostname_routes_get_zero_trust_network_hostname_routes_args_doc}
class GetZeroTrustNetworkHostnameRoutesArgs {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  /// If set, only list hostname routes with the given comment.
  final pulumi.Input<String?>? comment;
  /// If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  final pulumi.Input<String?>? existedAt;
  /// If set, only list hostname routes that contain a substring of the given value, the filter is case-insensitive.
  final pulumi.Input<String?>? hostname;
  /// The hostname route ID.
  final pulumi.Input<String?>? id;
  /// If `true`, only return deleted hostname routes. If `false`, exclude deleted hostname routes.
  final pulumi.Input<bool?>? isDeleted;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// If set, only list hostname routes that point to a specific tunnel.
  final pulumi.Input<String?>? tunnelId;

  /// Creates a new [GetZeroTrustNetworkHostnameRoutesArgs].
  /// [accountId] Cloudflare account ID
  /// [comment] If set, only list hostname routes with the given comment.
  /// [existedAt] If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  /// [hostname] If set, only list hostname routes that contain a substring of the given value, the filter is case-insensitive.
  /// [id] The hostname route ID.
  /// [isDeleted] If `true`, only return deleted hostname routes. If `false`, exclude deleted hostname routes.
  /// [maxItems] Max items to fetch, default: 1000
  /// [tunnelId] If set, only list hostname routes that point to a specific tunnel.
  const GetZeroTrustNetworkHostnameRoutesArgs({
    this.accountId,
    this.comment,
    this.existedAt,
    this.hostname,
    this.id,
    this.isDeleted,
    this.maxItems,
    this.tunnelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comment': ?comment,
      'existedAt': ?existedAt,
      'hostname': ?hostname,
      'id': ?id,
      'isDeleted': ?isDeleted,
      'maxItems': ?maxItems,
      'tunnelId': ?tunnelId,
    };
  }

  factory GetZeroTrustNetworkHostnameRoutesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustNetworkHostnameRoutesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      existedAt: (() { final guardedValue = map['existedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
