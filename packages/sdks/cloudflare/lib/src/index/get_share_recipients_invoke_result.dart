// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_recipients_result.dart';

/// Result data returned by getShareRecipients.
class GetShareRecipientsInvokeResult {
  /// Account identifier.
  final String? accountId;
  /// Include resources in the response.
  final bool? includeResources;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetShareRecipientsResult>? results;
  /// Share identifier tag.
  final String? shareId;

  /// Creates a new [GetShareRecipientsInvokeResult].
  /// [accountId] Account identifier.
  /// [includeResources] Include resources in the response.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [shareId] Share identifier tag.
  const GetShareRecipientsInvokeResult({
    this.accountId,
    this.includeResources,
    this.maxItems,
    this.results,
    this.shareId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'includeResources': ?includeResources,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetShareRecipientsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'shareId': ?shareId,
    };
  }

  factory GetShareRecipientsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetShareRecipientsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeResources: (() { final guardedValue = map['includeResources']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetShareRecipientsResult>(guardedValue, (value) => GetShareRecipientsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
