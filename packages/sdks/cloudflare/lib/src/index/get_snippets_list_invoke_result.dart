// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snippets_list_result.dart';

/// Result data returned by getSnippetsList.
class GetSnippetsListInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetSnippetsListResult>? results;
  /// The unique ID of the zone.
  final String? zoneId;

  /// Creates a new [GetSnippetsListInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [zoneId] The unique ID of the zone.
  const GetSnippetsListInvokeResult({
    this.maxItems,
    this.results,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSnippetsListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetSnippetsListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetSnippetsListInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSnippetsListResult>(guardedValue, (value) => GetSnippetsListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
