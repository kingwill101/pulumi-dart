// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_ssls_result.dart';

/// Result data returned by getCustomSsls.
class GetCustomSslsInvokeResult {
  /// Whether to match all search requirements or at least one (any).
  /// Available values: "any", "all".
  final String? match;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetCustomSslsResult>? results;
  /// Status of the zone's custom SSL.
  /// Available values: "active", "expired", "deleted", "pending", "initializing".
  final String? status;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetCustomSslsInvokeResult].
  /// [match] Whether to match all search requirements or at least one (any).
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [status] Status of the zone's custom SSL.
  /// [zoneId] Identifier.
  const GetCustomSslsInvokeResult({
    this.match,
    this.maxItems,
    this.results,
    this.status,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': ?match,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCustomSslsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomSslsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetCustomSslsInvokeResult(
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCustomSslsResult>(guardedValue, (value) => GetCustomSslsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
