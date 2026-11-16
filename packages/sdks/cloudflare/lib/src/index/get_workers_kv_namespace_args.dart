// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workers_kv_namespace_filter.dart';

/// {@template pulumi_index_get_workers_kv_namespace_get_workers_kv_namespace_args_doc}
/// Arguments for getWorkersKvNamespace.
/// {@endtemplate}
/// {@macro pulumi_index_get_workers_kv_namespace_get_workers_kv_namespace_args_doc}
class GetWorkersKvNamespaceArgs {
  /// ID of the Cloudflare account that owns the Workers KV namespaces.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetWorkersKvNamespaceFilter?>? filter;
  /// ID of the Workers KV namespace.
  final pulumi.Input<String?>? namespaceId;

  /// Creates a new [GetWorkersKvNamespaceArgs].
  /// [accountId] ID of the Cloudflare account that owns the Workers KV namespaces.
  /// [filter] Optional.
  /// [namespaceId] ID of the Workers KV namespace.
  const GetWorkersKvNamespaceArgs({
    this.accountId,
    this.filter,
    this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetWorkersKvNamespaceFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'namespaceId': ?namespaceId,
    };
  }

  factory GetWorkersKvNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkersKvNamespaceArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetWorkersKvNamespaceFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
