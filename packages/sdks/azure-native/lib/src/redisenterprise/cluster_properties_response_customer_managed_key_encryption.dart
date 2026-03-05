// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_properties_response_key_encryption_key_identity.dart';

/// All Customer-managed key encryption properties for the resource. Set this to an empty object to use Microsoft-managed key encryption.
class ClusterPropertiesResponseCustomerManagedKeyEncryption {
  /// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  final pulumi.Input<ClusterPropertiesResponseKeyEncryptionKeyIdentity>? keyEncryptionKeyIdentity;
  /// Key encryption key Url, versioned only. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78
  final pulumi.Input<String>? keyEncryptionKeyUrl;

  /// Creates a new [ClusterPropertiesResponseCustomerManagedKeyEncryption].
  /// [keyEncryptionKeyIdentity] All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
  /// [keyEncryptionKeyUrl] Key encryption key Url, versioned only. Ex: https://contosovault.vault.azure.net/keys/contosokek/562a4bb76b524a1493a6afe8e536ee78
  ClusterPropertiesResponseCustomerManagedKeyEncryption({
    this.keyEncryptionKeyIdentity,
    this.keyEncryptionKeyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKeyIdentity': ?pulumi.Input.mapOptionalInputValue<ClusterPropertiesResponseKeyEncryptionKeyIdentity, Map<String, dynamic>>(keyEncryptionKeyIdentity, (value) => value.toMap()),
      'keyEncryptionKeyUrl': ?keyEncryptionKeyUrl,
    };
  }

  factory ClusterPropertiesResponseCustomerManagedKeyEncryption.fromMap(Map<String, dynamic> map) {
    return ClusterPropertiesResponseCustomerManagedKeyEncryption(
      keyEncryptionKeyIdentity: (() { final guardedValue = map['keyEncryptionKeyIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterPropertiesResponseKeyEncryptionKeyIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyEncryptionKeyUrl: (() { final guardedValue = map['keyEncryptionKeyUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

