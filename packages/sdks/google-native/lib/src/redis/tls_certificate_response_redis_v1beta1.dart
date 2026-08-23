// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TlsCertificate Resource
class TlsCertificateResponseRedisV1beta1 {
  /// PEM representation.
  final pulumi.Input<String> cert;
  /// The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.
  final pulumi.Input<String> createTime;
  /// The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.
  final pulumi.Input<String> expireTime;
  /// Serial number, as extracted from the certificate.
  final pulumi.Input<String> serialNumber;
  /// Sha1 Fingerprint of the certificate.
  final pulumi.Input<String> sha1Fingerprint;

  /// Creates a new [TlsCertificateResponseRedisV1beta1].
  /// [cert] PEM representation.
  /// [createTime] The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.
  /// [expireTime] The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.
  /// [serialNumber] Serial number, as extracted from the certificate.
  /// [sha1Fingerprint] Sha1 Fingerprint of the certificate.
  const TlsCertificateResponseRedisV1beta1({
    required this.cert,
    required this.createTime,
    required this.expireTime,
    required this.serialNumber,
    required this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': cert,
      'createTime': createTime,
      'expireTime': expireTime,
      'serialNumber': serialNumber,
      'sha1Fingerprint': sha1Fingerprint,
    };
  }

  factory TlsCertificateResponseRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return TlsCertificateResponseRedisV1beta1(
      cert: pulumi.Input.fromValue(map['cert'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      sha1Fingerprint: pulumi.Input.fromValue(map['sha1Fingerprint'] as String),
    );
  }
}
