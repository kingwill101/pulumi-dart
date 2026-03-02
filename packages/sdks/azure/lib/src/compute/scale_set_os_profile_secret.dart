// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_os_profile_secret_vault_certificate.dart';

class ScaleSetOsProfileSecret {
  /// Specifies the key vault to use.
  final pulumi.Input<String> sourceVaultId;
  /// (Required, on Windows machines) One or more `vault_certificates` blocks as defined below.
  final pulumi.Input<List<ScaleSetOsProfileSecretVaultCertificate>>? vaultCertificates;

  /// Creates a new [ScaleSetOsProfileSecret].
  /// [sourceVaultId] Specifies the key vault to use.
  /// [vaultCertificates] (Required, on Windows machines) One or more `vault_certificates` blocks as defined below.
  ScaleSetOsProfileSecret({
    required this.sourceVaultId,
    this.vaultCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceVaultId': sourceVaultId,
      'vaultCertificates': ?pulumi.Input.mapOptionalInputValue<List<ScaleSetOsProfileSecretVaultCertificate>, List<Map<String, dynamic>>>(vaultCertificates, (value) => pulumi.Input.encodeList<ScaleSetOsProfileSecretVaultCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScaleSetOsProfileSecret.fromMap(Map<String, dynamic> map) {
    return ScaleSetOsProfileSecret(
      sourceVaultId: (map['sourceVaultId'] as String).input(),
      vaultCertificates: map['vaultCertificates'] == null ? null : (pulumi.Input.decodeList<ScaleSetOsProfileSecretVaultCertificate>(map['vaultCertificates']!, (value) => ScaleSetOsProfileSecretVaultCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

