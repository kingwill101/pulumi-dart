// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workers_kv_namespaces_get_workers_kv_namespaces_args_doc}
/// Arguments for getWorkersKvNamespaces.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_kv_namespaces_get_workers_kv_namespaces_args_doc}
class GetWorkersKvNamespacesArgs {
  /// ID of the Cloudflare account that owns the Workers KV namespaces.
  final pulumi.Input<String?>? accountId;
  /// Sort namespaces in ascending (`asc`) or descending (`desc`) order.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Namespace field to sort by (`id` or `title`).
  /// Available values: "id", "title".
  final pulumi.Input<String?>? order;

  /// Creates a new [GetWorkersKvNamespacesArgs].
  /// [accountId] ID of the Cloudflare account that owns the Workers KV namespaces.
  /// [direction] Sort namespaces in ascending (`asc`) or descending (`desc`) order.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Namespace field to sort by (`id` or `title`).
  const GetWorkersKvNamespacesArgs({
    this.accountId,
    this.direction,
    this.maxItems,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'maxItems': ?maxItems,
      'order': ?order,
    };
  }

  factory GetWorkersKvNamespacesArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersKvNamespacesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
