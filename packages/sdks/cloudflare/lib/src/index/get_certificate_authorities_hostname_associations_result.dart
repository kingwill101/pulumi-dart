// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificateAuthoritiesHostnameAssociations.
class GetCertificateAuthoritiesHostnameAssociationsResult {
  final List<String>? hostnames;
  /// Identifier.
  final String? id;
  /// The UUID to match against for a certificate that was uploaded to the mTLS Certificate Management endpoint. If no mtls*certificate*id is given, the results will be the hostnames associated to your active Cloudflare Managed CA.
  final String? mtlsCertificateId;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetCertificateAuthoritiesHostnameAssociationsResult].
  /// [hostnames] Optional.
  /// [id] Identifier.
  /// [mtlsCertificateId] The UUID to match against for a certificate that was uploaded to the mTLS Certificate Management endpoint. If no mtls*certificate*id is given, the results will be the hostnames associated to your active Cloudflare Managed CA.
  /// [zoneId] Identifier.
  const GetCertificateAuthoritiesHostnameAssociationsResult({
    this.hostnames,
    this.id,
    this.mtlsCertificateId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?hostnames,
      'id': ?id,
      'mtlsCertificateId': ?mtlsCertificateId,
      'zoneId': ?zoneId,
    };
  }

  factory GetCertificateAuthoritiesHostnameAssociationsResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthoritiesHostnameAssociationsResult(
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mtlsCertificateId: (() { final guardedValue = map['mtlsCertificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
