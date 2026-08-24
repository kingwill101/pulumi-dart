// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_namespaces_result.dart';

/// Result data returned by getAiSearchNamespaces.
class GetAiSearchNamespacesInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// The items returned by the data source
  final List<GetAiSearchNamespacesResult>? results;
  /// Filter namespaces whose name or description contains this string (case-insensitive).
  final String? search;

  /// Creates a new [GetAiSearchNamespacesInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [results] The items returned by the data source
  /// [search] Filter namespaces whose name or description contains this string (case-insensitive).
  const GetAiSearchNamespacesInvokeResult({
    this.accountId,
    this.maxItems,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAiSearchNamespacesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
    };
  }

  factory GetAiSearchNamespacesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespacesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAiSearchNamespacesResult>(guardedValue, (value) => GetAiSearchNamespacesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
