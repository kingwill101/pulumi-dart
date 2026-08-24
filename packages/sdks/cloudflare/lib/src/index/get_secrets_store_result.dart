// ignore_for_file: unused_element, unnecessary_cast

import 'get_secrets_store_filter.dart';

/// Result data returned by getSecretsStore.
class GetSecretsStoreResult {
  final String? accountId;
  /// When the secret was created.
  final String? created;
  final GetSecretsStoreFilter? filter;
  /// The ID of this resource.
  final String? id;
  /// When the secret was modified.
  final String? modified;
  /// The name of the store.
  final String? name;
  final String? storeId;

  /// Creates a new [GetSecretsStoreResult].
  /// [accountId] Optional.
  /// [created] When the secret was created.
  /// [filter] Optional.
  /// [id] The ID of this resource.
  /// [modified] When the secret was modified.
  /// [name] The name of the store.
  /// [storeId] Optional.
  const GetSecretsStoreResult({
    this.accountId,
    this.created,
    this.filter,
    this.id,
    this.modified,
    this.name,
    this.storeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'modified': ?modified,
      'name': ?name,
      'storeId': ?storeId,
    };
  }

  factory GetSecretsStoreResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsStoreResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetSecretsStoreFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storeId: (() { final guardedValue = map['storeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
