// ignore_for_file: unused_element, unnecessary_cast

import 'get_secrets_store_secret_filter.dart';

/// Result data returned by getSecretsStoreSecret.
class GetSecretsStoreSecretResult {
  /// Account Identifier
  final String? accountId;
  /// Freeform text describing the secret.
  final String? comment;
  /// When the secret was created.
  final String? created;
  final GetSecretsStoreSecretFilter? filter;
  /// Secret identifier tag.
  final String? id;
  /// When the secret was modified.
  final String? modified;
  /// The name of the secret.
  final String? name;
  /// The list of services that can use this secret.
  final List<String>? scopes;
  /// Secret identifier tag.
  final String? secretId;
  /// Available values: "pending", "active", "deleted".
  final String? status;
  /// Store Identifier
  final String? storeId;

  /// Creates a new [GetSecretsStoreSecretResult].
  /// [accountId] Account Identifier
  /// [comment] Freeform text describing the secret.
  /// [created] When the secret was created.
  /// [filter] Optional.
  /// [id] Secret identifier tag.
  /// [modified] When the secret was modified.
  /// [name] The name of the secret.
  /// [scopes] The list of services that can use this secret.
  /// [secretId] Secret identifier tag.
  /// [status] Available values: "pending", "active", "deleted".
  /// [storeId] Store Identifier
  const GetSecretsStoreSecretResult({
    this.accountId,
    this.comment,
    this.created,
    this.filter,
    this.id,
    this.modified,
    this.name,
    this.scopes,
    this.secretId,
    this.status,
    this.storeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comment': ?comment,
      'created': ?created,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'modified': ?modified,
      'name': ?name,
      'scopes': ?scopes,
      'secretId': ?secretId,
      'status': ?status,
      'storeId': ?storeId,
    };
  }

  factory GetSecretsStoreSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretsStoreSecretResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetSecretsStoreSecretFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      secretId: (() { final guardedValue = map['secretId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storeId: (() { final guardedValue = map['storeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
