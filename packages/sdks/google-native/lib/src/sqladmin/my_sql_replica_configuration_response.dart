// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Read-replica configuration specific to MySQL databases.
class MySqlReplicaConfigurationResponse {
  /// PEM representation of the trusted CA's x509 certificate.
  final pulumi.Input<String> caCertificate;
  /// PEM representation of the replica's x509 certificate.
  final pulumi.Input<String> clientCertificate;
  /// PEM representation of the replica's private key. The corresponsing public key is encoded in the client's certificate.
  final pulumi.Input<String> clientKey;
  /// Seconds to wait between connect retries. MySQL's default is 60 seconds.
  final pulumi.Input<int> connectRetryInterval;
  /// Path to a SQL dump file in Google Cloud Storage from which the replica instance is to be created. The URI is in the form gs://bucketName/fileName. Compressed gzip files (.gz) are also supported. Dumps have the binlog co-ordinates from which replication begins. This can be accomplished by setting --master-data to 1 when using mysqldump.
  final pulumi.Input<String> dumpFilePath;
  /// This is always `sql#mysqlReplicaConfiguration`.
  final pulumi.Input<String> kind;
  /// Interval in milliseconds between replication heartbeats.
  final pulumi.Input<String> masterHeartbeatPeriod;
  /// The password for the replication connection.
  final pulumi.Input<String> password;
  /// A list of permissible ciphers to use for SSL encryption.
  final pulumi.Input<String> sslCipher;
  /// The username for the replication connection.
  final pulumi.Input<String> username;
  /// Whether or not to check the primary instance's Common Name value in the certificate that it sends during the SSL handshake.
  final pulumi.Input<bool> verifyServerCertificate;

  /// Creates a new [MySqlReplicaConfigurationResponse].
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
  MySqlReplicaConfigurationResponse({
    required this.caCertificate,
    required this.clientCertificate,
    required this.clientKey,
    required this.connectRetryInterval,
    required this.dumpFilePath,
    required this.kind,
    required this.masterHeartbeatPeriod,
    required this.password,
    required this.sslCipher,
    required this.username,
    required this.verifyServerCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': caCertificate,
      'clientCertificate': clientCertificate,
      'clientKey': clientKey,
      'connectRetryInterval': connectRetryInterval,
      'dumpFilePath': dumpFilePath,
      'kind': kind,
      'masterHeartbeatPeriod': masterHeartbeatPeriod,
      'password': password,
      'sslCipher': sslCipher,
      'username': username,
      'verifyServerCertificate': verifyServerCertificate,
    };
  }

  factory MySqlReplicaConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return MySqlReplicaConfigurationResponse(
      caCertificate: pulumi.Input.fromValue(map['caCertificate'] as String),
      clientCertificate: pulumi.Input.fromValue(map['clientCertificate'] as String),
      clientKey: pulumi.Input.fromValue(map['clientKey'] as String),
      connectRetryInterval: pulumi.Input.fromValue(map['connectRetryInterval'] as int),
      dumpFilePath: pulumi.Input.fromValue(map['dumpFilePath'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      masterHeartbeatPeriod: pulumi.Input.fromValue(map['masterHeartbeatPeriod'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      sslCipher: pulumi.Input.fromValue(map['sslCipher'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
      verifyServerCertificate: pulumi.Input.fromValue(map['verifyServerCertificate'] as bool),
    );
  }
}

