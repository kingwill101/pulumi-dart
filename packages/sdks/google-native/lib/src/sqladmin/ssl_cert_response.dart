// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SslCerts Resource
class SslCertResponse {
  /// PEM representation.
  final pulumi.Input<String> cert;
  /// Serial number, as extracted from the certificate.
  final pulumi.Input<String> certSerialNumber;
  /// User supplied name. Constrained to [a-zA-Z.-_ ]+.
  final pulumi.Input<String> commonName;
  /// The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`
  final pulumi.Input<String> createTime;
  /// The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String> expirationTime;
  /// Name of the database instance.
  final pulumi.Input<String> instance;
  /// This is always `sql#sslCert`.
  final pulumi.Input<String> kind;
  /// The URI of this resource.
  final pulumi.Input<String> selfLink;
  /// Sha1 Fingerprint.
  final pulumi.Input<String> sha1Fingerprint;

  /// Creates a new [SslCertResponse].
  /// [cert] PEM representation.
  /// [certSerialNumber] Serial number, as extracted from the certificate.
  /// [commonName] User supplied name. Constrained to [a-zA-Z.-_ ]+.
  /// [createTime] The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`
  /// [expirationTime] The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [instance] Name of the database instance.
  /// [kind] This is always `sql#sslCert`.
  /// [selfLink] The URI of this resource.
  /// [sha1Fingerprint] Sha1 Fingerprint.
  const SslCertResponse({
    required this.cert,
    required this.certSerialNumber,
    required this.commonName,
    required this.createTime,
    required this.expirationTime,
    required this.instance,
    required this.kind,
    required this.selfLink,
    required this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': cert,
      'certSerialNumber': certSerialNumber,
      'commonName': commonName,
      'createTime': createTime,
      'expirationTime': expirationTime,
      'instance': instance,
      'kind': kind,
      'selfLink': selfLink,
      'sha1Fingerprint': sha1Fingerprint,
    };
  }

  factory SslCertResponse.fromMap(Map<String, dynamic> map) {
    return SslCertResponse(
      cert: pulumi.Input.fromValue(map['cert'] as String),
      certSerialNumber: pulumi.Input.fromValue(map['certSerialNumber'] as String),
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      expirationTime: pulumi.Input.fromValue(map['expirationTime'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      sha1Fingerprint: pulumi.Input.fromValue(map['sha1Fingerprint'] as String),
    );
  }
}

