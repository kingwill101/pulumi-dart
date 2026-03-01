// ignore_for_file: unused_element, unnecessary_cast


class GetCertificateCertificate {
  /// Certificate data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  final String certPem;
  /// `true` if the certificate is of a CA (Certificate Authority).
  final bool isCa;
  /// Who verified and signed the certificate, roughly following [RFC2253](https://tools.ietf.org/html/rfc2253).
  final String issuer;
  /// The maximum number of intermediate certificates that can follow this certificate in a valid certification path. If `is_ca` is `false`, this value is `-1`.
  final int maxPathLength;
  /// The time until which the certificate is invalid, as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  final String notAfter;
  /// The time after which the certificate is valid, as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  final String notBefore;
  /// The key algorithm used to create the certificate.
  final String publicKeyAlgorithm;
  /// Number that uniquely identifies the certificate with the CA's system.
  /// The `format` function can be used to convert this *base 10* number into other bases, such as hex.
  final String serialNumber;
  /// The SHA1 fingerprint of the public key of the certificate.
  final String sha1Fingerprint;
  /// The algorithm used to sign the certificate.
  final String signatureAlgorithm;
  /// The entity the certificate belongs to, roughly following [RFC2253](https://tools.ietf.org/html/rfc2253).
  final String subject;
  /// The version the certificate is in.
  final int version;

  /// Creates a new [GetCertificateCertificate].
  /// [certPem] Certificate data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  /// [isCa] `true` if the certificate is of a CA (Certificate Authority).
  /// [issuer] Who verified and signed the certificate, roughly following [RFC2253](https://tools.ietf.org/html/rfc2253).
  /// [maxPathLength] The maximum number of intermediate certificates that can follow this certificate in a valid certification path. If `is_ca` is `false`, this value is `-1`.
  /// [notAfter] The time until which the certificate is invalid, as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  /// [notBefore] The time after which the certificate is valid, as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  /// [publicKeyAlgorithm] The key algorithm used to create the certificate.
  /// [serialNumber] Number that uniquely identifies the certificate with the CA's system.
  /// [sha1Fingerprint] The SHA1 fingerprint of the public key of the certificate.
  /// [signatureAlgorithm] The algorithm used to sign the certificate.
  /// [subject] The entity the certificate belongs to, roughly following [RFC2253](https://tools.ietf.org/html/rfc2253).
  /// [version] The version the certificate is in.
  GetCertificateCertificate({
    required this.certPem,
    required this.isCa,
    required this.issuer,
    required this.maxPathLength,
    required this.notAfter,
    required this.notBefore,
    required this.publicKeyAlgorithm,
    required this.serialNumber,
    required this.sha1Fingerprint,
    required this.signatureAlgorithm,
    required this.subject,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certPem': certPem,
      'isCa': isCa,
      'issuer': issuer,
      'maxPathLength': maxPathLength,
      'notAfter': notAfter,
      'notBefore': notBefore,
      'publicKeyAlgorithm': publicKeyAlgorithm,
      'serialNumber': serialNumber,
      'sha1Fingerprint': sha1Fingerprint,
      'signatureAlgorithm': signatureAlgorithm,
      'subject': subject,
      'version': version,
    };
  }

  factory GetCertificateCertificate.fromMap(Map<String, dynamic> map) {
    return GetCertificateCertificate(
      certPem: map['certPem'] as String,
      isCa: map['isCa'] as bool,
      issuer: map['issuer'] as String,
      maxPathLength: map['maxPathLength'] as int,
      notAfter: map['notAfter'] as String,
      notBefore: map['notBefore'] as String,
      publicKeyAlgorithm: map['publicKeyAlgorithm'] as String,
      serialNumber: map['serialNumber'] as String,
      sha1Fingerprint: map['sha1Fingerprint'] as String,
      signatureAlgorithm: map['signatureAlgorithm'] as String,
      subject: map['subject'] as String,
      version: map['version'] as int,
    );
  }
}

