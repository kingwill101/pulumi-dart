// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CertificateAuthoritiesHostnameAssociations resources.
class CertificateAuthoritiesHostnameAssociationsState {
  final pulumi.Input<List<String>?>? hostnames;
  /// The UUID for a certificate that was uploaded to the mTLS Certificate Management endpoint. If no mtls*certificate*id is given, the hostnames will be associated to your active Cloudflare Managed CA.
  final pulumi.Input<String?>? mtlsCertificateId;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CertificateAuthoritiesHostnameAssociationsState].
  /// [hostnames] Optional.
  /// [mtlsCertificateId] The UUID for a certificate that was uploaded to the mTLS Certificate Management endpoint. If no mtls*certificate*id is given, the hostnames will be associated to your active Cloudflare Managed CA.
  /// [zoneId] Identifier.
  const CertificateAuthoritiesHostnameAssociationsState({
    this.hostnames,
    this.mtlsCertificateId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?hostnames,
      'mtlsCertificateId': ?mtlsCertificateId,
      'zoneId': ?zoneId,
    };
  }

  factory CertificateAuthoritiesHostnameAssociationsState.fromMap(Map<String, dynamic> map) {
    return CertificateAuthoritiesHostnameAssociationsState(
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mtlsCertificateId: (() { final guardedValue = map['mtlsCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
