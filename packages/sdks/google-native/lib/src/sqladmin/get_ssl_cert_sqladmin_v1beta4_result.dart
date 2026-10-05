// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSslCert.
class GetSslCertSqladminV1beta4Result {
  /// PEM representation.
  final String? cert;
  /// Serial number, as extracted from the certificate.
  final String? certSerialNumber;
  /// User supplied name. Constrained to [a-zA-Z.-_ ]+.
  final String? commonName;
  /// The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String? createTime;
  /// The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String? expirationTime;
  /// Name of the database instance.
  final String? instance;
  /// This is always `sql#sslCert`.
  final String? kind;
  /// The URI of this resource.
  final String? selfLink;
  /// Sha1 Fingerprint.
  final String? sha1Fingerprint;

  /// Creates a new [GetSslCertSqladminV1beta4Result].
  /// [cert] PEM representation.
  /// [certSerialNumber] Serial number, as extracted from the certificate.
  /// [commonName] User supplied name. Constrained to [a-zA-Z.-_ ]+.
  /// [createTime] The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [expirationTime] The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [instance] Name of the database instance.
  /// [kind] This is always `sql#sslCert`.
  /// [selfLink] The URI of this resource.
  /// [sha1Fingerprint] Sha1 Fingerprint.
  const GetSslCertSqladminV1beta4Result({
    this.cert,
    this.certSerialNumber,
    this.commonName,
    this.createTime,
    this.expirationTime,
    this.instance,
    this.kind,
    this.selfLink,
    this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert,
      'certSerialNumber': ?certSerialNumber,
      'commonName': ?commonName,
      'createTime': ?createTime,
      'expirationTime': ?expirationTime,
      'instance': ?instance,
      'kind': ?kind,
      'selfLink': ?selfLink,
      'sha1Fingerprint': ?sha1Fingerprint,
    };
  }

  factory GetSslCertSqladminV1beta4Result.fromMap(Map<String, dynamic> map) {
    return GetSslCertSqladminV1beta4Result(
      cert: (() { final guardedValue = map['cert']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certSerialNumber: (() { final guardedValue = map['certSerialNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sha1Fingerprint: (() { final guardedValue = map['sha1Fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
