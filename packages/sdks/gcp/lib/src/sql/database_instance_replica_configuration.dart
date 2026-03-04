// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceReplicaConfiguration {
  /// PEM representation of the trusted CA's x509
  /// certificate.
  final pulumi.Input<String>? caCertificate;

  /// Specifies if the replica is a cascadable replica. If true, instance must be in different region from primary.
  ///
  /// &gt; **NOTE:** Only supported for SQL Server database.
  final pulumi.Input<bool>? cascadableReplica;

  /// PEM representation of the replica's x509
  /// certificate.
  final pulumi.Input<String>? clientCertificate;

  /// PEM representation of the replica's private key. The
  /// corresponding public key in encoded in the `client_certificate`.
  final pulumi.Input<String>? clientKey;

  /// The number of seconds
  /// between connect retries. MySQL's default is 60 seconds.
  final pulumi.Input<int>? connectRetryInterval;

  /// Path to a SQL file in GCS from which replica
  /// instances are created. Format is `gs://bucket/filename`. Note, if the master
  /// instance is a source representation instance this field must be present.
  final pulumi.Input<String>? dumpFilePath;

  /// Specifies if the replica is the failover target.
  /// If the field is set to true the replica will be designated as a failover replica.
  /// If the master instance fails, the replica instance will be promoted as
  /// the new master instance.
  /// &gt; **NOTE:** Not supported for Postgres database.
  final pulumi.Input<bool>? failoverTarget;

  /// Time in ms between replication
  /// heartbeats.
  final pulumi.Input<int>? masterHeartbeatPeriod;

  /// Password for the replication connection.
  final pulumi.Input<String>? password;

  /// Permissible ciphers for use in SSL encryption.
  final pulumi.Input<String>? sslCipher;

  /// Username for replication connection.
  final pulumi.Input<String>? username;

  /// True if the master's common name
  /// value is checked during the SSL handshake.
  final pulumi.Input<bool>? verifyServerCertificate;

  /// Creates a new [DatabaseInstanceReplicaConfiguration].
  /// [caCertificate] PEM representation of the trusted CA's x509
  /// [cascadableReplica] Specifies if the replica is a cascadable replica. If true, instance must be in different region from primary.
  /// [clientCertificate] PEM representation of the replica's x509
  /// [clientKey] PEM representation of the replica's private key. The
  /// [connectRetryInterval] The number of seconds
  /// [dumpFilePath] Path to a SQL file in GCS from which replica
  /// [failoverTarget] Specifies if the replica is the failover target.
  /// [masterHeartbeatPeriod] Time in ms between replication
  /// [password] Password for the replication connection.
  /// [sslCipher] Permissible ciphers for use in SSL encryption.
  /// [username] Username for replication connection.
  /// [verifyServerCertificate] True if the master's common name
  DatabaseInstanceReplicaConfiguration({
    this.caCertificate,
    this.cascadableReplica,
    this.clientCertificate,
    this.clientKey,
    this.connectRetryInterval,
    this.dumpFilePath,
    this.failoverTarget,
    this.masterHeartbeatPeriod,
    this.password,
    this.sslCipher,
    this.username,
    this.verifyServerCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': ?caCertificate,
      'cascadableReplica': ?cascadableReplica,
      'clientCertificate': ?clientCertificate,
      'clientKey': ?clientKey,
      'connectRetryInterval': ?connectRetryInterval,
      'dumpFilePath': ?dumpFilePath,
      'failoverTarget': ?failoverTarget,
      'masterHeartbeatPeriod': ?masterHeartbeatPeriod,
      'password': ?password,
      'sslCipher': ?sslCipher,
      'username': ?username,
      'verifyServerCertificate': ?verifyServerCertificate,
    };
  }

  factory DatabaseInstanceReplicaConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseInstanceReplicaConfiguration(
      caCertificate: (() {
        final guardedValue = map['caCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cascadableReplica: (() {
        final guardedValue = map['cascadableReplica'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clientCertificate: (() {
        final guardedValue = map['clientCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientKey: (() {
        final guardedValue = map['clientKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectRetryInterval: (() {
        final guardedValue = map['connectRetryInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dumpFilePath: (() {
        final guardedValue = map['dumpFilePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      failoverTarget: (() {
        final guardedValue = map['failoverTarget'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      masterHeartbeatPeriod: (() {
        final guardedValue = map['masterHeartbeatPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslCipher: (() {
        final guardedValue = map['sslCipher'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      verifyServerCertificate: (() {
        final guardedValue = map['verifyServerCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
