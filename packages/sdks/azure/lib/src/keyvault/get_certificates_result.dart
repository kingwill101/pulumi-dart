// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificates_certificate.dart';

/// Result data returned by getCertificates.
class GetCertificatesResult {
  /// One or more `certificates` blocks as defined below.
  final List<GetCertificatesCertificate>? certificates;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? includePending;
  /// The Key Vault ID.
  final String? keyVaultId;
  /// List containing names of certificates that exist in this Key Vault.
  final List<String>? names;

  /// Creates a new [GetCertificatesResult].
  /// [certificates] One or more `certificates` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includePending] Optional.
  /// [keyVaultId] The Key Vault ID.
  /// [names] List containing names of certificates that exist in this Key Vault.
  const GetCertificatesResult({
    this.certificates,
    this.id,
    this.includePending,
    this.keyVaultId,
    this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': ?(() { final guardedValue = certificates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCertificatesCertificate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'includePending': ?includePending,
      'keyVaultId': ?keyVaultId,
      'names': ?names,
    };
  }

  factory GetCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetCertificatesResult(
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCertificatesCertificate>(guardedValue, (value) => GetCertificatesCertificate.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includePending: (() { final guardedValue = map['includePending']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
