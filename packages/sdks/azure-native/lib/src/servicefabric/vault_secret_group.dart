// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';
import 'vault_certificate.dart';

/// Specifies set of certificates that should be installed onto the virtual machines.
class VaultSecretGroup {
  /// The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  final SubResource sourceVault;
  /// The list of key vault references in SourceVault which contain certificates.
  final List<VaultCertificate> vaultCertificates;

  /// Creates a new [VaultSecretGroup].
  /// [sourceVault] The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  /// [vaultCertificates] The list of key vault references in SourceVault which contain certificates.
  VaultSecretGroup({
    required this.sourceVault,
    required this.vaultCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceVault': sourceVault.toMap(),
      'vaultCertificates': pulumi.Input.encodeList<VaultCertificate, Map<String, dynamic>>(vaultCertificates, (value) => value.toMap()),
    };
  }

  factory VaultSecretGroup.fromMap(Map<String, dynamic> map) {
    return VaultSecretGroup(
      sourceVault: SubResource.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
      vaultCertificates: pulumi.Input.decodeList<VaultCertificate>(map['vaultCertificates'], (value) => VaultCertificate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

