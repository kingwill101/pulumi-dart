// ignore_for_file: unused_element, unnecessary_cast

import 'get_workers_kv_namespace_filter.dart';

/// Result data returned by getWorkersKvNamespace.
class GetWorkersKvNamespaceResult {
  /// Identifier.
  final String? accountId;
  final GetWorkersKvNamespaceFilter? filter;
  /// Namespace identifier tag.
  final String? id;
  /// Namespace identifier tag.
  final String? namespaceId;
  /// True if keys written on the URL will be URL-decoded before storing. For example, if set to "true", a key written on the URL as "%3F" will be stored as "?".
  final bool? supportsUrlEncoding;
  /// A human-readable string name for a Namespace.
  final String? title;

  /// Creates a new [GetWorkersKvNamespaceResult].
  /// [accountId] Identifier.
  /// [filter] Optional.
  /// [id] Namespace identifier tag.
  /// [namespaceId] Namespace identifier tag.
  /// [supportsUrlEncoding] True if keys written on the URL will be URL-decoded before storing. For example, if set to "true", a key written on the URL as "%3F" will be stored as "?".
  /// [title] A human-readable string name for a Namespace.
  const GetWorkersKvNamespaceResult({
    this.accountId,
    this.filter,
    this.id,
    this.namespaceId,
    this.supportsUrlEncoding,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?filter?.toMap(),
      'id': ?id,
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
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportsUrlEncoding: (() { final guardedValue = map['supportsUrlEncoding']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
