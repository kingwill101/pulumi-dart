// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceServerCaCert {
  /// The CA Certificate used to connect to the SQL Instance via SSL.
  final pulumi.Input<String> cert;
  /// The CN valid for the CA Cert.
  final pulumi.Input<String> commonName;
  /// Creation time of the CA Cert.
  final pulumi.Input<String> createTime;
  /// Expiration time of the CA Cert.
  final pulumi.Input<String> expirationTime;
  /// SHA Fingerprint of the CA Cert.
  final pulumi.Input<String> sha1Fingerprint;

  /// Creates a new [GetDatabaseInstanceServerCaCert].
  /// [cert] The CA Certificate used to connect to the SQL Instance via SSL.
  /// [commonName] The CN valid for the CA Cert.
  /// [createTime] Creation time of the CA Cert.
  /// [expirationTime] Expiration time of the CA Cert.
  /// [sha1Fingerprint] SHA Fingerprint of the CA Cert.
  GetDatabaseInstanceServerCaCert({
    required this.cert,
    required this.commonName,
    required this.createTime,
    required this.expirationTime,
    required this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': cert,
      'commonName': commonName,
      'createTime': createTime,
      'expirationTime': expirationTime,
      'sha1Fingerprint': sha1Fingerprint,
    };
  }

  factory GetDatabaseInstanceServerCaCert.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceServerCaCert(
      cert: (map['cert'] as String).input(),
      commonName: (map['commonName'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      expirationTime: (map['expirationTime'] as String).input(),
      sha1Fingerprint: (map['sha1Fingerprint'] as String).input(),
    );
  }
}

