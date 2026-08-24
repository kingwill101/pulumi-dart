// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authenticated_origin_pulls_hostname_certificates_result.dart';

/// Result data returned by getAuthenticatedOriginPullsHostnameCertificates.
class GetAuthenticatedOriginPullsHostnameCertificatesInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetAuthenticatedOriginPullsHostnameCertificatesResult>? results;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetAuthenticatedOriginPullsHostnameCertificatesInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [zoneId] Identifier.
  const GetAuthenticatedOriginPullsHostnameCertificatesInvokeResult({
    this.maxItems,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAuthenticatedOriginPullsHostnameCertificatesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetAuthenticatedOriginPullsHostnameCertificatesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAuthenticatedOriginPullsHostnameCertificatesInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAuthenticatedOriginPullsHostnameCertificatesResult>(guardedValue, (value) => GetAuthenticatedOriginPullsHostnameCertificatesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
