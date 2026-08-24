// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_workers_kv_namespaces_get_workers_kv_namespaces_args_doc}
/// Arguments for getWorkersKvNamespaces.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_kv_namespaces_get_workers_kv_namespaces_args_doc}
class GetWorkersKvNamespacesArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Direction to order namespaces.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Field to order results by.
  /// Available values: "id", "title".
  final pulumi.Input<String?>? order;

  /// Creates a new [GetWorkersKvNamespacesArgs].
  /// [accountId] Identifier.
  /// [direction] Direction to order namespaces.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Field to order results by.
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
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
