// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificateCertificate {
  /// Certificate data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  final pulumi.Input<String> certPem;
  /// `true` if the certificate is of a CA (Certificate Authority).
  final pulumi.Input<bool> isCa;
  /// Who verified and signed the certificate, roughly following [RFC2253](https://tools.ietf.org/html/rfc2253).
  final pulumi.Input<String> issuer;
  /// The maximum number of intermediate certificates that can follow this certificate in a valid certification path. If `isCa` is `false`, this value is `-1`.
  final pulumi.Input<int> maxPathLength;
  /// The time until which the certificate is invalid, as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  final pulumi.Input<String> notAfter;
  /// The time after which the certificate is valid, as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  final pulumi.Input<String> notBefore;
  /// The key algorithm used to create the certificate.
  final pulumi.Input<String> publicKeyAlgorithm;
  /// Number that uniquely identifies the certificate with the CA's system.
  /// The `format` function can be used to convert this *base 10* number into other bases, such as hex.
  final pulumi.Input<String> serialNumber;
  /// The SHA1 fingerprint of the public key of the certificate.
  final pulumi.Input<String> sha1Fingerprint;
  /// The algorithm used to sign the certificate.
  final pulumi.Input<String> signatureAlgorithm;
  /// The entity the certificate belongs to, roughly following [RFC2253](https://tools.ietf.org/html/rfc2253).
  final pulumi.Input<String> subject;
  /// The version the certificate is in.
  final pulumi.Input<int> version;

  /// Creates a new [GetCertificateCertificate].
  /// [certPem] Certificate data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using `trimspace()`.
  /// [isCa] `true` if the certificate is of a CA (Certificate Authority).
  /// [issuer] Who verified and signed the certificate, roughly following [RFC2253](https://tools.ietf.org/html/rfc2253).
  /// [maxPathLength] The maximum number of intermediate certificates that can follow this certificate in a valid certification path. If `isCa` is `false`, this value is `-1`.
  /// [notAfter] The time until which the certificate is invalid, as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  /// [notBefore] The time after which the certificate is valid, as an [RFC3339](https://tools.ietf.org/html/rfc3339) timestamp.
  /// [publicKeyAlgorithm] The key algorithm used to create the certificate.
  /// [serialNumber] Number that uniquely identifies the certificate with the CA's system.
  /// [sha1Fingerprint] The SHA1 fingerprint of the public key of the certificate.
  /// [signatureAlgorithm] The algorithm used to sign the certificate.
  /// [subject] The entity the certificate belongs to, roughly following [RFC2253](https://tools.ietf.org/html/rfc2253).
  /// [version] The version the certificate is in.
  const GetCertificateCertificate({
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
      certPem: pulumi.Input.fromValue(map['certPem'] as String),
      isCa: pulumi.Input.fromValue(map['isCa'] as bool),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      maxPathLength: pulumi.Input.fromValue(map['maxPathLength'] as int),
      notAfter: pulumi.Input.fromValue(map['notAfter'] as String),
      notBefore: pulumi.Input.fromValue(map['notBefore'] as String),
      publicKeyAlgorithm: pulumi.Input.fromValue(map['publicKeyAlgorithm'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      sha1Fingerprint: pulumi.Input.fromValue(map['sha1Fingerprint'] as String),
      signatureAlgorithm: pulumi.Input.fromValue(map['signatureAlgorithm'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      version: pulumi.Input.fromValue(map['version'] as int),
    );
  }
}
