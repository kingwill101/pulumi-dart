// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_packs_result.dart';

/// Result data returned by getCertificatePacks.
class GetCertificatePacksInvokeResult {
  /// Specify the deployment environment for the certificate packs.
  /// Available values: "staging", "production".
  final String? deploy;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetCertificatePacksResult>? results;
  /// Include Certificate Packs of all statuses, not just active ones.
  /// Available values: "all".
  final String? status;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetCertificatePacksInvokeResult].
  /// [deploy] Specify the deployment environment for the certificate packs.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [status] Include Certificate Packs of all statuses, not just active ones.
  /// [zoneId] Identifier.
  const GetCertificatePacksInvokeResult({
    this.deploy,
    this.maxItems,
    this.results,
    this.status,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploy': ?deploy,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCertificatePacksResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'zoneId': ?zoneId,
    };
  }

  factory GetCertificatePacksInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetCertificatePacksInvokeResult(
      deploy: (() { final guardedValue = map['deploy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCertificatePacksResult>(guardedValue, (value) => GetCertificatePacksResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
