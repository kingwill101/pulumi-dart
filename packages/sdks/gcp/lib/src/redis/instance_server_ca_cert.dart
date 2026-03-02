// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceServerCaCert {
  /// (Output)
  /// The certificate data in PEM format.
  final pulumi.Input<String>? cert;
  /// (Output)
  /// The time when the certificate was created.
  final pulumi.Input<String>? createTime;
  /// (Output)
  /// The time when the certificate expires.
  final pulumi.Input<String>? expireTime;
  /// (Output)
  /// Serial number, as extracted from the certificate.
  final pulumi.Input<String>? serialNumber;
  /// (Output)
  /// Sha1 Fingerprint of the certificate.
  final pulumi.Input<String>? sha1Fingerprint;

  /// Creates a new [InstanceServerCaCert].
  /// [cert] (Output)
  /// [createTime] (Output)
  /// [expireTime] (Output)
  /// [serialNumber] (Output)
  /// [sha1Fingerprint] (Output)
  InstanceServerCaCert({
    this.cert,
    this.createTime,
    this.expireTime,
    this.serialNumber,
    this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert,
      'createTime': ?createTime,
      'expireTime': ?expireTime,
      'serialNumber': ?serialNumber,
      'sha1Fingerprint': ?sha1Fingerprint,
    };
  }

  factory InstanceServerCaCert.fromMap(Map<String, dynamic> map) {
    return InstanceServerCaCert(
      cert: map['cert'] == null ? null : (map['cert'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime'] as String).input(),
      serialNumber: map['serialNumber'] == null ? null : (map['serialNumber'] as String).input(),
      sha1Fingerprint: map['sha1Fingerprint'] == null ? null : (map['sha1Fingerprint'] as String).input(),
    );
  }
}

