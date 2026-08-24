// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_result.dart';

/// Result data returned by getWorkers.
class GetWorkersInvokeResult {
  /// Identifier.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Sort direction.
  /// Available values: "asc", "desc".
  final String? order;
  /// Property to sort results by.
  /// Available values: "deployed*on", "updated*on", "createdOn", "name".
  final String? orderBy;
  /// The items returned by the data source
  final List<GetWorkersResult>? results;

  /// Creates a new [GetWorkersInvokeResult].
  /// [accountId] Identifier.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Sort direction.
  /// [orderBy] Property to sort results by.
  /// [results] The items returned by the data source
  const GetWorkersInvokeResult({
    this.accountId,
    this.maxItems,
    this.order,
    this.orderBy,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'order': ?order,
      'orderBy': ?orderBy,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkersResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetWorkersInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkersResult>(guardedValue, (value) => GetWorkersResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
