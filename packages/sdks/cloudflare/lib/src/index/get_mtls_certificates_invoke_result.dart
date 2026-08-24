// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_mtls_certificates_result.dart';

/// Result data returned by getMtlsCertificates.
class GetMtlsCertificatesInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetMtlsCertificatesResult>? results;

  /// Creates a new [GetMtlsCertificatesInvokeResult].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetMtlsCertificatesInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMtlsCertificatesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetMtlsCertificatesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetMtlsCertificatesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMtlsCertificatesResult>(guardedValue, (value) => GetMtlsCertificatesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
