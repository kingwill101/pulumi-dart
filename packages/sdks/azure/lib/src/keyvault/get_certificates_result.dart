// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificates_certificate.dart';

/// Result data returned by getCertificates.
class GetCertificatesResult {
  /// One or more `certificates` blocks as defined below.
  final List<GetCertificatesCertificate> certificates;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includePending;

  /// The Key Vault ID.
  final String keyVaultId;

  /// List containing names of certificates that exist in this Key Vault.
  final List<String> names;

  /// Creates a new [GetCertificatesResult].
  /// [certificates] One or more `certificates` blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includePending] Optional.
  /// [keyVaultId] The Key Vault ID.
  /// [names] List containing names of certificates that exist in this Key Vault.
  GetCertificatesResult({
    required this.certificates,
    required this.id,
    this.includePending,
    required this.keyVaultId,
    required this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates':
          pulumi.Input.encodeList<
            GetCertificatesCertificate,
            Map<String, dynamic>
          >(certificates, (value) => value.toMap()),
      'id': id,
      'includePending': ?includePending,
      'keyVaultId': keyVaultId,
      'names': names,
    };
  }

  factory GetCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetCertificatesResult(
      certificates: pulumi.Input.decodeList<GetCertificatesCertificate>(
        map['certificates']!,
        (value) => GetCertificatesCertificate.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      includePending: (() {
        final guardedValue = map['includePending'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      keyVaultId: map['keyVaultId'] as String,
      names: (map['names'] as List).cast<String>(),
    );
  }
}
