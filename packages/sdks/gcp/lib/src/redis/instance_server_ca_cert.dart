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
  const InstanceServerCaCert({
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
      cert: (() { final guardedValue = map['cert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha1Fingerprint: (() { final guardedValue = map['sha1Fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

