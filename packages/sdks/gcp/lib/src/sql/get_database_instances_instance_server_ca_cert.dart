// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceServerCaCert {
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

  /// Creates a new [GetDatabaseInstancesInstanceServerCaCert].
  /// [cert] The CA Certificate used to connect to the SQL Instance via SSL.
  /// [commonName] The CN valid for the CA Cert.
  /// [createTime] Creation time of the CA Cert.
  /// [expirationTime] Expiration time of the CA Cert.
  /// [sha1Fingerprint] SHA Fingerprint of the CA Cert.
  GetDatabaseInstancesInstanceServerCaCert({
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

  factory GetDatabaseInstancesInstanceServerCaCert.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstancesInstanceServerCaCert(
      cert: pulumi.Input.fromValue(map['cert'] as String),
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      expirationTime: pulumi.Input.fromValue(map['expirationTime'] as String),
      sha1Fingerprint: pulumi.Input.fromValue(map['sha1Fingerprint'] as String),
    );
  }
}
