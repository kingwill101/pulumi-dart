// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_network_hostname_routes_result.dart';

/// Result data returned by getZeroTrustNetworkHostnameRoutes.
class GetZeroTrustNetworkHostnameRoutesInvokeResult {
  /// Cloudflare account ID
  final String? accountId;
  /// If set, only list hostname routes with the given comment.
  final String? comment;
  /// If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  final String? existedAt;
  /// If set, only list hostname routes that contain a substring of the given value, the filter is case-insensitive.
  final String? hostname;
  /// The hostname route ID.
  final String? id;
  /// If `true`, only return deleted hostname routes. If `false`, exclude deleted hostname routes.
  final bool? isDeleted;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustNetworkHostnameRoutesResult>? results;
  /// If set, only list hostname routes that point to a specific tunnel.
  final String? tunnelId;

  /// Creates a new [GetZeroTrustNetworkHostnameRoutesInvokeResult].
  /// [accountId] Cloudflare account ID
  /// [comment] If set, only list hostname routes with the given comment.
  /// [existedAt] If provided, include only resources that were created (and not deleted) before this time. URL encoded.
  /// [hostname] If set, only list hostname routes that contain a substring of the given value, the filter is case-insensitive.
  /// [id] The hostname route ID.
  /// [isDeleted] If `true`, only return deleted hostname routes. If `false`, exclude deleted hostname routes.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [tunnelId] If set, only list hostname routes that point to a specific tunnel.
  const GetZeroTrustNetworkHostnameRoutesInvokeResult({
    this.accountId,
    this.comment,
    this.existedAt,
    this.hostname,
    this.id,
    this.isDeleted,
    this.maxItems,
    this.results,
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
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustNetworkHostnameRoutesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tunnelId': ?tunnelId,
    };
  }

  factory GetZeroTrustNetworkHostnameRoutesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustNetworkHostnameRoutesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      existedAt: (() { final guardedValue = map['existedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustNetworkHostnameRoutesResult>(guardedValue, (value) => GetZeroTrustNetworkHostnameRoutesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
