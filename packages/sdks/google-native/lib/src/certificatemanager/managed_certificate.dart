// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration and state of a Managed Certificate. Certificate Manager provisions and renews Managed Certificates automatically, for as long as it's authorized to do so.
class ManagedCertificate {
  /// Immutable. Authorizations that will be used for performing domain authorization.
  final pulumi.Input<List<String>>? dnsAuthorizations;
  /// Immutable. The domains for which a managed SSL certificate will be generated. Wildcard domains are only supported with DNS challenge resolution.
  final pulumi.Input<List<String>>? domains;
  /// Immutable. The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format `projects/*/locations/*/certificateIssuanceConfigs/*`. If this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.
  final pulumi.Input<String>? issuanceConfig;

  /// Creates a new [ManagedCertificate].
  /// [dnsAuthorizations] Immutable. Authorizations that will be used for performing domain authorization.
  /// [domains] Immutable. The domains for which a managed SSL certificate will be generated. Wildcard domains are only supported with DNS challenge resolution.
  /// [issuanceConfig] Immutable. The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format `projects/*/locations/*/certificateIssuanceConfigs/*`. If this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.
  const ManagedCertificate({
    this.dnsAuthorizations,
    this.domains,
    this.issuanceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsAuthorizations': ?dnsAuthorizations,
      'domains': ?domains,
      'issuanceConfig': ?issuanceConfig,
    };
  }

  factory ManagedCertificate.fromMap(Map<String, dynamic> map) {
    return ManagedCertificate(
      dnsAuthorizations: (() { final guardedValue = map['dnsAuthorizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      issuanceConfig: (() { final guardedValue = map['issuanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

