// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_kv_namespaces_result.dart';

/// Result data returned by getWorkersKvNamespaces.
class GetWorkersKvNamespacesInvokeResult {
  /// ID of the Cloudflare account that owns the Workers KV namespaces.
  final String? accountId;
  /// Sort namespaces in ascending (`asc`) or descending (`desc`) order.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Namespace field to sort by (`id` or `title`).
  /// Available values: "id", "title".
  final String? order;
  /// The items returned by the data source
  final List<GetWorkersKvNamespacesResult>? results;

  /// Creates a new [GetWorkersKvNamespacesInvokeResult].
  /// [accountId] ID of the Cloudflare account that owns the Workers KV namespaces.
  /// [direction] Sort namespaces in ascending (`asc`) or descending (`desc`) order.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Namespace field to sort by (`id` or `title`).
  /// [results] The items returned by the data source
  const GetWorkersKvNamespacesInvokeResult({
    this.accountId,
    this.direction,
    this.maxItems,
    this.order,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkersKvNamespacesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetWorkersKvNamespacesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersKvNamespacesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkersKvNamespacesResult>(guardedValue, (value) => GetWorkersKvNamespacesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
