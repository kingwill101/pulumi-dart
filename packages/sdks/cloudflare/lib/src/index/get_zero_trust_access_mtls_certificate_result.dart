// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustAccessMtlsCertificate.
class GetZeroTrustAccessMtlsCertificateResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// The hostnames of the applications that will use this certificate.
  final List<String>? associatedHostnames;
  /// UUID.
  final String? certificateId;
  final String? expiresOn;
  /// The MD5 fingerprint of the certificate.
  final String? fingerprint;
  /// UUID.
  final String? id;
  /// The name of the certificate.
  final String? name;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetZeroTrustAccessMtlsCertificateResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [associatedHostnames] The hostnames of the applications that will use this certificate.
  /// [certificateId] UUID.
  /// [expiresOn] Optional.
  /// [fingerprint] The MD5 fingerprint of the certificate.
  /// [id] UUID.
  /// [name] The name of the certificate.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetZeroTrustAccessMtlsCertificateResult({
    this.accountId,
    this.associatedHostnames,
    this.certificateId,
    this.expiresOn,
    this.fingerprint,
    this.id,
    this.name,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'associatedHostnames': ?associatedHostnames,
      'certificateId': ?certificateId,
      'expiresOn': ?expiresOn,
      'fingerprint': ?fingerprint,
      'id': ?id,
      'name': ?name,
      'zoneId': ?zoneId,
    };
  }

  factory GetZeroTrustAccessMtlsCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessMtlsCertificateResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      associatedHostnames: (() { final guardedValue = map['associatedHostnames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
