// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEncryptionScope.
class GetEncryptionScopeResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ID of the Key Vault Key.
  final String? keyVaultKeyId;
  final String? name;
  /// The source of the Storage Encryption Scope.
  final String? source;
  final String? storageAccountId;

  /// Creates a new [GetEncryptionScopeResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultKeyId] The ID of the Key Vault Key.
  /// [name] Optional.
  /// [source] The source of the Storage Encryption Scope.
  /// [storageAccountId] Optional.
  const GetEncryptionScopeResult({
    this.id,
    this.keyVaultKeyId,
    this.name,
    this.source,
    this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'keyVaultKeyId': ?keyVaultKeyId,
      'name': ?name,
      'source': ?source,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory GetEncryptionScopeResult.fromMap(Map<String, dynamic> map) {
    return GetEncryptionScopeResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultKeyId: (() { final guardedValue = map['keyVaultKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
