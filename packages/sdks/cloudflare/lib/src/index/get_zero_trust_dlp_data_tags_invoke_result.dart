// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_data_tags_result.dart';

/// Result data returned by getZeroTrustDlpDataTags.
class GetZeroTrustDlpDataTagsInvokeResult {
  final String? accountId;
  final String? categoryId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustDlpDataTagsResult>? results;

  /// Creates a new [GetZeroTrustDlpDataTagsInvokeResult].
  /// [accountId] Optional.
  /// [categoryId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetZeroTrustDlpDataTagsInvokeResult({
    this.accountId,
    this.categoryId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'categoryId': ?categoryId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpDataTagsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustDlpDataTagsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDataTagsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      categoryId: (() { final guardedValue = map['categoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpDataTagsResult>(guardedValue, (value) => GetZeroTrustDlpDataTagsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
