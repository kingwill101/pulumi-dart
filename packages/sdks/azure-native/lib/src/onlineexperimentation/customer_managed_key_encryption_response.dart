// ignore_for_file: unused_element, unnecessary_cast

import 'key_encryption_key_identity_response.dart';

/// Customer-managed key encryption properties for the resource.
class CustomerManagedKeyEncryptionResponse {
  /// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  final KeyEncryptionKeyIdentityResponse? keyEncryptionKeyIdentity;
  /// key encryption key Url, versioned or non-versioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  final String? keyEncryptionKeyUrl;

  /// Creates a new [CustomerManagedKeyEncryptionResponse].
  /// [keyEncryptionKeyIdentity] All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  /// [keyEncryptionKeyUrl] key encryption key Url, versioned or non-versioned. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78 or https://contosovault.vault.azure.net/keys/contosokek.
  CustomerManagedKeyEncryptionResponse({
    this.keyEncryptionKeyIdentity,
    this.keyEncryptionKeyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKeyIdentity': ?keyEncryptionKeyIdentity == null ? null : keyEncryptionKeyIdentity!.toMap(),
      'keyEncryptionKeyUrl': ?keyEncryptionKeyUrl,
    };
  }

  factory CustomerManagedKeyEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyEncryptionResponse(
      keyEncryptionKeyIdentity: map['keyEncryptionKeyIdentity'] == null ? null : KeyEncryptionKeyIdentityResponse.fromMap((map['keyEncryptionKeyIdentity'] as Map).cast<String, dynamic>()),
      keyEncryptionKeyUrl: map['keyEncryptionKeyUrl'] == null ? null : map['keyEncryptionKeyUrl'] as String,
    );
  }
}

