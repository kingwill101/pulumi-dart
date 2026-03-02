// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Read-replica configuration specific to MySQL databases.
class MySqlReplicaConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  final pulumi.Input<String>? caCertificate;
  /// PEM representation of the replica's x509 certificate.
  final pulumi.Input<String>? clientCertificate;
  /// PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.
  final pulumi.Input<String>? clientKey;
  /// Seconds to wait between connect retries. MySQL's default is 60 seconds.
  final pulumi.Input<int>? connectRetryInterval;
  /// Path to a SQL dump file in Google Cloud Storage from which the replica instance is to be created. The URI is in the form gs://bucketName/fileName. Compressed gzip files (.gz) are also supported. Dumps have the binlog co-ordinates from which replication begins. This can be accomplished by setting --master-data to 1 when using mysqldump.
  final pulumi.Input<String>? dumpFilePath;
  /// This is always `sql#mysqlReplicaConfiguration`.
  final pulumi.Input<String>? kind;
  /// Interval in milliseconds between replication heartbeats.
  final pulumi.Input<String>? masterHeartbeatPeriod;
  /// The password for the replication connection.
  final pulumi.Input<String>? password;
  /// A list of permissible ciphers to use for SSL encryption.
  final pulumi.Input<String>? sslCipher;
  /// The username for the replication connection.
  final pulumi.Input<String>? username;
  /// Whether or not to check the primary instance's Common Name value in the certificate that it sends during the SSL handshake.
  final pulumi.Input<bool>? verifyServerCertificate;

  /// Creates a new [MySqlReplicaConfiguration].
  /// [caCertificate] PEM representation of the trusted CA's x509 certificate.
  /// [clientCertificate] PEM representation of the replica's x509 certificate.
  /// [clientKey] PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.
  /// [connectRetryInterval] Seconds to wait between connect retries. MySQL's default is 60 seconds.
  /// [dumpFilePath] Path to a SQL dump file in Google Cloud Storage from which the replica instance is to be created. The URI is in the form gs://bucketName/fileName. Compressed gzip files (.gz) are also supported. Dumps have the binlog co-ordinates from which replication begins. This can be accomplished by setting --master-data to 1 when using mysqldump.
  /// [kind] This is always `sql#mysqlReplicaConfiguration`.
  /// [masterHeartbeatPeriod] Interval in milliseconds between replication heartbeats.
  /// [password] The password for the replication connection.
  /// [sslCipher] A list of permissible ciphers to use for SSL encryption.
  /// [username] The username for the replication connection.
  /// [verifyServerCertificate] Whether or not to check the primary instance's Common Name value in the certificate that it sends during the SSL handshake.
  MySqlReplicaConfiguration({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.connectRetryInterval,
    this.dumpFilePath,
    this.kind,
    this.masterHeartbeatPeriod,
    this.password,
    this.sslCipher,
    this.username,
    this.verifyServerCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': ?caCertificate,
      'clientCertificate': ?clientCertificate,
      'clientKey': ?clientKey,
      'connectRetryInterval': ?connectRetryInterval,
      'dumpFilePath': ?dumpFilePath,
      'kind': ?kind,
      'masterHeartbeatPeriod': ?masterHeartbeatPeriod,
      'password': ?password,
      'sslCipher': ?sslCipher,
      'username': ?username,
      'verifyServerCertificate': ?verifyServerCertificate,
    };
  }

  factory MySqlReplicaConfiguration.fromMap(Map<String, dynamic> map) {
    return MySqlReplicaConfiguration(
      caCertificate: map['caCertificate'] == null ? null : (map['caCertificate'] as String).input(),
      clientCertificate: map['clientCertificate'] == null ? null : (map['clientCertificate'] as String).input(),
      clientKey: map['clientKey'] == null ? null : (map['clientKey'] as String).input(),
      connectRetryInterval: map['connectRetryInterval'] == null ? null : (map['connectRetryInterval'] as int).input(),
      dumpFilePath: map['dumpFilePath'] == null ? null : (map['dumpFilePath'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      masterHeartbeatPeriod: map['masterHeartbeatPeriod'] == null ? null : (map['masterHeartbeatPeriod'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      sslCipher: map['sslCipher'] == null ? null : (map['sslCipher'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
      verifyServerCertificate: map['verifyServerCertificate'] == null ? null : (map['verifyServerCertificate'] as bool).input(),
    );
  }
}

