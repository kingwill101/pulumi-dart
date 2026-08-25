// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceServerCaCert {
  /// The CA Certificate used to connect to the SQL Instance via SSL.
  final pulumi.Input<String?>? cert;
  /// The CN valid for the CA Cert.
  final pulumi.Input<String?>? commonName;
  /// Creation time of the CA Cert.
  final pulumi.Input<String?>? createTime;
  /// Expiration time of the CA Cert.
  final pulumi.Input<String?>? expirationTime;
  /// SHA Fingerprint of the CA Cert.
  final pulumi.Input<String?>? sha1Fingerprint;

  /// Creates a new [DatabaseInstanceServerCaCert].
  /// [cert] The CA Certificate used to connect to the SQL Instance via SSL.
  /// [commonName] The CN valid for the CA Cert.
  /// [createTime] Creation time of the CA Cert.
  /// [expirationTime] Expiration time of the CA Cert.
  /// [sha1Fingerprint] SHA Fingerprint of the CA Cert.
  const DatabaseInstanceServerCaCert({
    this.cert,
    this.commonName,
    this.createTime,
    this.expirationTime,
    this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert,
      'commonName': ?commonName,
      'createTime': ?createTime,
      'expirationTime': ?expirationTime,
      'sha1Fingerprint': ?sha1Fingerprint,
    };
  }

  factory DatabaseInstanceServerCaCert.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceServerCaCert(
      cert: (() { final guardedValue = map['cert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha1Fingerprint: (() { final guardedValue = map['sha1Fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
