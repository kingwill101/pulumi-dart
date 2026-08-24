// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_search_instances_result.dart';

/// Result data returned by getAiSearchInstances.
class GetAiSearchInstancesInvokeResult {
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter by namespace.
  final String? namespace;
  /// Field to order results by.
  /// Available values: "createdAt".
  final String? orderBy;
  /// Order direction.
  /// Available values: "asc", "desc".
  final String? orderByDirection;
  /// The items returned by the data source
  final List<GetAiSearchInstancesResult>? results;
  /// Filter instances whose id contains this string (case-insensitive).
  final String? search;

  /// Creates a new [GetAiSearchInstancesInvokeResult].
  /// [accountId] Optional.
  /// [maxItems] Max items to fetch, default: 1000
  /// [namespace] Filter by namespace.
  /// [orderBy] Field to order results by.
  /// [orderByDirection] Order direction.
  /// [results] The items returned by the data source
  /// [search] Filter instances whose id contains this string (case-insensitive).
  const GetAiSearchInstancesInvokeResult({
    this.accountId,
    this.maxItems,
    this.namespace,
    this.orderBy,
    this.orderByDirection,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'namespace': ?namespace,
      'orderBy': ?orderBy,
      'orderByDirection': ?orderByDirection,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAiSearchInstancesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
    };
  }

  factory GetAiSearchInstancesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderByDirection: (() { final guardedValue = map['orderByDirection']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAiSearchInstancesResult>(guardedValue, (value) => GetAiSearchInstancesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
