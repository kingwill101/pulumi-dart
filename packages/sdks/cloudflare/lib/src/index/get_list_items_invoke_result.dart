// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_list_items_result.dart';

/// Result data returned by getListItems.
class GetListItemsInvokeResult {
  /// The Account ID for this resource.
  final String? accountId;
  /// The unique ID of the list.
  final String? listId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Amount of results to include in each paginated response. A non-negative 32 bit integer.
  final int? perPage;
  /// The items returned by the data source
  final List<GetListItemsResult>? results;
  /// A search query to filter returned items. Its meaning depends on the list type: IP addresses must start with the provided string, hostnames and bulk redirects must contain the string, and ASNs must match the string exactly.
  final String? search;

  /// Creates a new [GetListItemsInvokeResult].
  /// [accountId] The Account ID for this resource.
  /// [listId] The unique ID of the list.
  /// [maxItems] Max items to fetch, default: 1000
  /// [perPage] Amount of results to include in each paginated response. A non-negative 32 bit integer.
  /// [results] The items returned by the data source
  /// [search] A search query to filter returned items. Its meaning depends on the list type: IP addresses must start with the provided string, hostnames and bulk redirects must contain the string, and ASNs must match the string exactly.
  const GetListItemsInvokeResult({
    this.accountId,
    this.listId,
    this.maxItems,
    this.perPage,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'listId': ?listId,
      'maxItems': ?maxItems,
      'perPage': ?perPage,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetListItemsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
    };
  }

  factory GetListItemsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetListItemsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      listId: (() { final guardedValue = map['listId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetListItemsResult>(guardedValue, (value) => GetListItemsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
