// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmk_kek_identity.dart';
import 'cmk_key_vault_properties.dart';

/// Customer Managed Key details of the resource.
class VaultPropertiesEncryption {
  /// Enabling/Disabling the Double Encryption state
  final pulumi.Input<String>? infrastructureEncryption;
  /// The details of the identity used for CMK
  final pulumi.Input<CmkKekIdentity>? kekIdentity;
  /// The properties of the Key Vault which hosts CMK
  final pulumi.Input<CmkKeyVaultProperties>? keyVaultProperties;

  /// Creates a new [VaultPropertiesEncryption].
  /// [infrastructureEncryption] Enabling/Disabling the Double Encryption state
  /// [kekIdentity] The details of the identity used for CMK
  /// [keyVaultProperties] The properties of the Key Vault which hosts CMK
  const VaultPropertiesEncryption({
    this.infrastructureEncryption,
    this.kekIdentity,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'infrastructureEncryption': ?infrastructureEncryption,
      'kekIdentity': ?pulumi.Input.mapOptionalInputValue<CmkKekIdentity, Map<String, dynamic>>(kekIdentity, (value) => value.toMap()),
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<CmkKeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory VaultPropertiesEncryption.fromMap(Map<String, dynamic> map) {
    return VaultPropertiesEncryption(
      infrastructureEncryption: (() { final guardedValue = map['infrastructureEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kekIdentity: (() { final guardedValue = map['kekIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CmkKekIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CmkKeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

