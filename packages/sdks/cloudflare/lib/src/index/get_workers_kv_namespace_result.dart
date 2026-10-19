// ignore_for_file: unused_element, unnecessary_cast

import 'get_workers_kv_namespace_filter.dart';

/// Result data returned by getWorkersKvNamespace.
class GetWorkersKvNamespaceResult {
  /// ID of the Cloudflare account that owns the Workers KV namespaces.
  final String? accountId;
  final GetWorkersKvNamespaceFilter? filter;
  /// ID of the Workers KV namespace.
  final String? id;
  /// Specify the jurisdiction to restrict the KV namespace to durably store data within. Can only be set at namespace creation time.
  /// Available values: "eu", "fedramp", "us".
  final String? jurisdiction;
  /// ID of the Workers KV namespace.
  final String? namespaceId;
  /// True if keys written on the URL will be URL-decoded before storing. For example, if set to "true", a key written on the URL as "%3F" will be stored as "?".
  final bool? supportsUrlEncoding;
  /// Human-readable string name for a Workers KV namespace.
  final String? title;

  /// Creates a new [GetWorkersKvNamespaceResult].
  /// [accountId] ID of the Cloudflare account that owns the Workers KV namespaces.
  /// [filter] Optional.
  /// [id] ID of the Workers KV namespace.
  /// [jurisdiction] Specify the jurisdiction to restrict the KV namespace to durably store data within. Can only be set at namespace creation time.
  /// [namespaceId] ID of the Workers KV namespace.
  /// [supportsUrlEncoding] True if keys written on the URL will be URL-decoded before storing. For example, if set to "true", a key written on the URL as "%3F" will be stored as "?".
  /// [title] Human-readable string name for a Workers KV namespace.
  const GetWorkersKvNamespaceResult({
    this.accountId,
    this.filter,
    this.id,
    this.jurisdiction,
    this.namespaceId,
    this.supportsUrlEncoding,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'jurisdiction': ?jurisdiction,
      'namespaceId': ?namespaceId,
      'supportsUrlEncoding': ?supportsUrlEncoding,
      'title': ?title,
    };
  }

  factory GetWorkersKvNamespaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkersKvNamespaceResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetWorkersKvNamespaceFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportsUrlEncoding: (() { final guardedValue = map['supportsUrlEncoding']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
