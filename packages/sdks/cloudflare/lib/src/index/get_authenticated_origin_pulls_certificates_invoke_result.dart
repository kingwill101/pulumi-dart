// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authenticated_origin_pulls_certificates_result.dart';

/// Result data returned by getAuthenticatedOriginPullsCertificates.
class GetAuthenticatedOriginPullsCertificatesInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetAuthenticatedOriginPullsCertificatesResult>? results;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetAuthenticatedOriginPullsCertificatesInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [zoneId] Identifier.
  const GetAuthenticatedOriginPullsCertificatesInvokeResult({
    this.maxItems,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAuthenticatedOriginPullsCertificatesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetAuthenticatedOriginPullsCertificatesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAuthenticatedOriginPullsCertificatesInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAuthenticatedOriginPullsCertificatesResult>(guardedValue, (value) => GetAuthenticatedOriginPullsCertificatesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
