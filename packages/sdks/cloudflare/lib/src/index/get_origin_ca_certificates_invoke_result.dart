// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_origin_ca_certificates_result.dart';

/// Result data returned by getOriginCaCertificates.
class GetOriginCaCertificatesInvokeResult {
  /// Limit to the number of records returned.
  final int? limit;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Offset the results.
  final int? offset;
  /// The items returned by the data source
  final List<GetOriginCaCertificatesResult>? results;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetOriginCaCertificatesInvokeResult].
  /// [limit] Limit to the number of records returned.
  /// [maxItems] Max items to fetch, default: 1000
  /// [offset] Offset the results.
  /// [results] The items returned by the data source
  /// [zoneId] Identifier.
  const GetOriginCaCertificatesInvokeResult({
    this.limit,
    this.maxItems,
    this.offset,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
      'maxItems': ?maxItems,
      'offset': ?offset,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOriginCaCertificatesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetOriginCaCertificatesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetOriginCaCertificatesInvokeResult(
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOriginCaCertificatesResult>(guardedValue, (value) => GetOriginCaCertificatesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
