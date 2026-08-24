// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_client_certificates_result.dart';

/// Result data returned by getClientCertificates.
class GetClientCertificatesInvokeResult {
  /// Limit to the number of records returned.
  final int? limit;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Offset the results.
  final int? offset;
  /// The items returned by the data source
  final List<GetClientCertificatesResult>? results;
  /// Client Certitifcate Status to filter results by.
  /// Available values: "all", "active", "pending*reactivation", "pending*revocation", "revoked".
  final String? status;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetClientCertificatesInvokeResult].
  /// [limit] Limit to the number of records returned.
  /// [maxItems] Max items to fetch, default: 1000
  /// [offset] Offset the results.
  /// [results] The items returned by the data source
  /// [status] Client Certitifcate Status to filter results by.
  /// [zoneId] Identifier.
  const GetClientCertificatesInvokeResult({
    this.limit,
    this.maxItems,
    this.offset,
    this.results,
    this.status,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': ?limit,
      'maxItems': ?maxItems,
      'offset': ?offset,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClientCertificatesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'zoneId': ?zoneId,
    };
  }

  factory GetClientCertificatesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetClientCertificatesInvokeResult(
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClientCertificatesResult>(guardedValue, (value) => GetClientCertificatesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
