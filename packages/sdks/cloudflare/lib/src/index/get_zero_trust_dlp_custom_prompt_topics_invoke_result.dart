// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_custom_prompt_topics_result.dart';

/// Result data returned by getZeroTrustDlpCustomPromptTopics.
class GetZeroTrustDlpCustomPromptTopicsInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetZeroTrustDlpCustomPromptTopicsResult>? results;

  /// Creates a new [GetZeroTrustDlpCustomPromptTopicsInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  const GetZeroTrustDlpCustomPromptTopicsInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpCustomPromptTopicsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustDlpCustomPromptTopicsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpCustomPromptTopicsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpCustomPromptTopicsResult>(guardedValue, (value) => GetZeroTrustDlpCustomPromptTopicsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
