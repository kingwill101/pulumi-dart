// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_certificate.dart';

/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The certificates protecting the site, with the root of the chain first.
  final List<GetCertificateCertificate> certificates;
  /// The content of the certificate in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. Cannot be used with `url`.
  final String? content;
  /// Unique identifier of this data source: hashing of the certificates in the chain.
  final String id;
  /// The URL of the website to get the certificates from. Cannot be used with `content`.
  final String? url;
  /// Whether to verify the certificate chain while parsing it or not (default: `true`). Cannot be used with `content`.
  final bool? verifyChain;

  /// Creates a new [GetCertificateResult].
  /// [certificates] The certificates protecting the site, with the root of the chain first.
  /// [content] The content of the certificate in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. Cannot be used with `url`.
  /// [id] Unique identifier of this data source: hashing of the certificates in the chain.
  /// [url] The URL of the website to get the certificates from. Cannot be used with `content`.
  /// [verifyChain] Whether to verify the certificate chain while parsing it or not (default: `true`). Cannot be used with `content`.
  GetCertificateResult({
    required this.certificates,
    this.content,
    required this.id,
    this.url,
    this.verifyChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.encodeList<GetCertificateCertificate, Map<String, dynamic>>(certificates, (value) => value.toMap()),
      'content': ?content,
      'id': id,
      'url': ?url,
      'verifyChain': ?verifyChain,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificates: pulumi.Input.decodeList<GetCertificateCertificate>(map['certificates'], (value) => GetCertificateCertificate.fromMap((value as Map).cast<String, dynamic>())),
      content: map['content'] == null ? null : map['content']! as String,
      id: map['id'] as String,
      url: map['url'] == null ? null : map['url']! as String,
      verifyChain: map['verifyChain'] == null ? null : map['verifyChain']! as bool,
    );
  }
}

