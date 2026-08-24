// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_resource_library_categories_result.dart';

/// Result data returned by getZeroTrustResourceLibraryCategories.
class GetZeroTrustResourceLibraryCategoriesInvokeResult {
  final String? accountId;
  /// Limit of number of results to return.
  final int? limit;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Offset of results to return.
  final int? offset;
  /// The items returned by the data source
  final List<GetZeroTrustResourceLibraryCategoriesResult>? results;

  /// Creates a new [GetZeroTrustResourceLibraryCategoriesInvokeResult].
  /// [accountId] Optional.
  /// [limit] Limit of number of results to return.
  /// [maxItems] Max items to fetch, default: 1000
  /// [offset] Offset of results to return.
  /// [results] The items returned by the data source
  const GetZeroTrustResourceLibraryCategoriesInvokeResult({
    this.accountId,
    this.limit,
    this.maxItems,
    this.offset,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'limit': ?limit,
      'maxItems': ?maxItems,
      'offset': ?offset,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustResourceLibraryCategoriesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetZeroTrustResourceLibraryCategoriesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustResourceLibraryCategoriesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustResourceLibraryCategoriesResult>(guardedValue, (value) => GetZeroTrustResourceLibraryCategoriesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
