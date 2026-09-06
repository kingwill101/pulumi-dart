// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmk_kek_identity_response.dart';
import 'cmk_key_vault_properties_response.dart';

/// Customer Managed Key details of the resource.
class VaultPropertiesResponseEncryption {
  /// Enabling/Disabling the Double Encryption state
  final pulumi.Input<String?>? infrastructureEncryption;
  /// The details of the identity used for CMK
  final pulumi.Input<CmkKekIdentityResponse?>? kekIdentity;
  /// The properties of the Key Vault which hosts CMK
  final pulumi.Input<CmkKeyVaultPropertiesResponse?>? keyVaultProperties;

  /// Creates a new [VaultPropertiesResponseEncryption].
  /// [infrastructureEncryption] Enabling/Disabling the Double Encryption state
  /// [kekIdentity] The details of the identity used for CMK
  /// [keyVaultProperties] The properties of the Key Vault which hosts CMK
  const VaultPropertiesResponseEncryption({
    this.infrastructureEncryption,
    this.kekIdentity,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureEncryption': ?infrastructureEncryption,
      'kekIdentity': ?pulumi.Input.mapOptionalInputValue<CmkKekIdentityResponse, Map<String, dynamic>>(kekIdentity, (value) => value.toMap()),
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<CmkKeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory VaultPropertiesResponseEncryption.fromMap(Map<String, dynamic> map) {
    return VaultPropertiesResponseEncryption(
      infrastructureEncryption: (() { final guardedValue = map['infrastructureEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kekIdentity: (() { final guardedValue = map['kekIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CmkKekIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CmkKeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
