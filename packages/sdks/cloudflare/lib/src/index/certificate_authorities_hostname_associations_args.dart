// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_certificate_authorities_hostname_associations_certificate_authorities_hostname_associations_args_doc}
/// The set of arguments for CertificateAuthoritiesHostnameAssociations.
/// {@endtemplate}
/// {@macro pulumi_index_certificate_authorities_hostname_associations_certificate_authorities_hostname_associations_args_doc}
class CertificateAuthoritiesHostnameAssociationsArgs {
  final pulumi.Input<List<String>?>? hostnames;
  /// The UUID for a certificate that was uploaded to the mTLS Certificate Management endpoint. If no mtls*certificate*id is given, the hostnames will be associated to your active Cloudflare Managed CA.
  final pulumi.Input<String?>? mtlsCertificateId;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [CertificateAuthoritiesHostnameAssociationsArgs].
  /// [hostnames] Optional.
  /// [mtlsCertificateId] The UUID for a certificate that was uploaded to the mTLS Certificate Management endpoint. If no mtls*certificate*id is given, the hostnames will be associated to your active Cloudflare Managed CA.
  /// [zoneId] Identifier.
  const CertificateAuthoritiesHostnameAssociationsArgs({
    this.hostnames,
    this.mtlsCertificateId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?hostnames,
      'mtlsCertificateId': ?mtlsCertificateId,
      'zoneId': zoneId,
    };
  }

  factory CertificateAuthoritiesHostnameAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return CertificateAuthoritiesHostnameAssociationsArgs(
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mtlsCertificateId: (() { final guardedValue = map['mtlsCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
