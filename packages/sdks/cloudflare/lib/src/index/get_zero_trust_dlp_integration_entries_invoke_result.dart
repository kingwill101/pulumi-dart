// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_integration_entries_result.dart';

/// Result data returned by getZeroTrustDlpIntegrationEntries.
class GetZeroTrustDlpIntegrationEntriesInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustDlpIntegrationEntriesResult>? results;

  /// Creates a new [GetZeroTrustDlpIntegrationEntriesInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetZeroTrustDlpIntegrationEntriesInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpIntegrationEntriesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustDlpIntegrationEntriesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpIntegrationEntriesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpIntegrationEntriesResult>(guardedValue, (value) => GetZeroTrustDlpIntegrationEntriesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
