// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_predefined_entries_result.dart';

/// Result data returned by getZeroTrustDlpPredefinedEntries.
class GetZeroTrustDlpPredefinedEntriesInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustDlpPredefinedEntriesResult>? results;

  /// Creates a new [GetZeroTrustDlpPredefinedEntriesInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetZeroTrustDlpPredefinedEntriesInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpPredefinedEntriesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustDlpPredefinedEntriesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpPredefinedEntriesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpPredefinedEntriesResult>(guardedValue, (value) => GetZeroTrustDlpPredefinedEntriesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
