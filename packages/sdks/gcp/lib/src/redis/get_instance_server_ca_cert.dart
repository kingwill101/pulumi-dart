// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceServerCaCert {
  /// The certificate data in PEM format.
  final pulumi.Input<String> cert;
  /// The time when the certificate was created.
  final pulumi.Input<String> createTime;
  /// The time when the certificate expires.
  final pulumi.Input<String> expireTime;
  /// Serial number, as extracted from the certificate.
  final pulumi.Input<String> serialNumber;
  /// Sha1 Fingerprint of the certificate.
  final pulumi.Input<String> sha1Fingerprint;

  /// Creates a new [GetInstanceServerCaCert].
  /// [cert] The certificate data in PEM format.
  /// [createTime] The time when the certificate was created.
  /// [expireTime] The time when the certificate expires.
  /// [serialNumber] Serial number, as extracted from the certificate.
  /// [sha1Fingerprint] Sha1 Fingerprint of the certificate.
  const GetInstanceServerCaCert({
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

  factory GetInstanceServerCaCert.fromMap(Map<String, dynamic> map) {
    return GetInstanceServerCaCert(
      cert: pulumi.Input.fromValue(map['cert'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      sha1Fingerprint: pulumi.Input.fromValue(map['sha1Fingerprint'] as String),
    );
  }
}

