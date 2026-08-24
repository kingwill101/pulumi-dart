// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_certificate_authorities_hostname_associations_get_certificate_authorities_hostname_associations_args_doc}
/// Arguments for getCertificateAuthoritiesHostnameAssociations.
/// {@endtemplate}
/// {@macro pulumi_index_get_certificate_authorities_hostname_associations_get_certificate_authorities_hostname_associations_args_doc}
class GetCertificateAuthoritiesHostnameAssociationsArgs {
  /// The UUID to match against for a certificate that was uploaded to the mTLS Certificate Management endpoint. If no mtls*certificate*id is given, the results will be the hostnames associated to your active Cloudflare Managed CA.
  final pulumi.Input<String?>? mtlsCertificateId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCertificateAuthoritiesHostnameAssociationsArgs].
  /// [mtlsCertificateId] The UUID to match against for a certificate that was uploaded to the mTLS Certificate Management endpoint. If no mtls*certificate*id is given, the results will be the hostnames associated to your active Cloudflare Managed CA.
  /// [zoneId] Identifier.
  const GetCertificateAuthoritiesHostnameAssociationsArgs({
    this.mtlsCertificateId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mtlsCertificateId': ?mtlsCertificateId,
      'zoneId': ?zoneId,
    };
  }

  factory GetCertificateAuthoritiesHostnameAssociationsArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthoritiesHostnameAssociationsArgs(
      mtlsCertificateId: (() { final guardedValue = map['mtlsCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
