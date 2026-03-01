// ignore_for_file: unused_element, unnecessary_cast

import 'cmk_kek_identity_response.dart';
import 'cmk_key_vault_properties_response.dart';

/// Customer Managed Key details of the resource.
class VaultPropertiesResponseEncryption {
  /// Enabling/Disabling the Double Encryption state
  final String? infrastructureEncryption;
  /// The details of the identity used for CMK
  final CmkKekIdentityResponse? kekIdentity;
  /// The properties of the Key Vault which hosts CMK
  final CmkKeyVaultPropertiesResponse? keyVaultProperties;

  /// Creates a new [VaultPropertiesResponseEncryption].
  /// [infrastructureEncryption] Enabling/Disabling the Double Encryption state
  /// [kekIdentity] The details of the identity used for CMK
  /// [keyVaultProperties] The properties of the Key Vault which hosts CMK
  VaultPropertiesResponseEncryption({
    this.infrastructureEncryption,
    this.kekIdentity,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureEncryption': ?infrastructureEncryption,
      'kekIdentity': ?kekIdentity == null ? null : kekIdentity!.toMap(),
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory VaultPropertiesResponseEncryption.fromMap(Map<String, dynamic> map) {
    return VaultPropertiesResponseEncryption(
      infrastructureEncryption: map['infrastructureEncryption'] == null ? null : map['infrastructureEncryption'] as String,
      kekIdentity: map['kekIdentity'] == null ? null : CmkKekIdentityResponse.fromMap((map['kekIdentity'] as Map).cast<String, dynamic>()),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : CmkKeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

