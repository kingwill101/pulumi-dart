// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'vault_certificate_response.dart';

/// Specifies set of certificates that should be installed onto the virtual machines.
class VaultSecretGroupResponse {
  /// The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  final SubResourceResponse sourceVault;
  /// The list of key vault references in SourceVault which contain certificates.
  final List<VaultCertificateResponse> vaultCertificates;

  /// Creates a new [VaultSecretGroupResponse].
  /// [sourceVault] The relative URL of the Key Vault containing all of the certificates in VaultCertificates.
  /// [vaultCertificates] The list of key vault references in SourceVault which contain certificates.
  VaultSecretGroupResponse({
    required this.sourceVault,
    required this.vaultCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceVault': sourceVault.toMap(),
      'vaultCertificates': pulumi.Input.encodeList<VaultCertificateResponse, Map<String, dynamic>>(vaultCertificates, (value) => value.toMap()),
    };
  }

  factory VaultSecretGroupResponse.fromMap(Map<String, dynamic> map) {
    return VaultSecretGroupResponse(
      sourceVault: SubResourceResponse.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
      vaultCertificates: pulumi.Input.decodeList<VaultCertificateResponse>(map['vaultCertificates'], (value) => VaultCertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

