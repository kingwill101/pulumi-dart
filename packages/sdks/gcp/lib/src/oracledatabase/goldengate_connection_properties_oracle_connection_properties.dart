// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesOracleConnectionProperties {
  /// Authentication mode.
  /// Possible values:
  /// TLS
  /// MTLS
  final pulumi.Input<String>? authenticationMode;
  /// Connect descriptor or Easy Connect Naming method used to connect to a
  /// database.
  final pulumi.Input<String>? connectionString;
  /// Database instance id of database in Oracle Database @ Google Cloud.
  /// If gcpOracleDatabaseId is provided, connectionString must be empty.
  final pulumi.Input<String>? gcpOracleDatabaseId;
  /// Input only. The password Oracle Goldengate uses in plain text.
  final pulumi.Input<String>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String>? passwordSecretVersion;
  /// The mode of the database connection session to be established by the data
  /// client.
  /// Possible values:
  /// DIRECT
  /// REDIRECT
  final pulumi.Input<String>? sessionMode;
  /// The technology type.
  final pulumi.Input<String>? technologyType;
  /// The username Oracle Goldengate uses to connect.
  final pulumi.Input<String>? username;
  /// The wallet contents Oracle Goldengate uses to make connections to a
  /// database.
  final pulumi.Input<String>? walletFile;

  /// Creates a new [GoldengateConnectionPropertiesOracleConnectionProperties].
  /// [authenticationMode] Authentication mode.
  /// [connectionString] Connect descriptor or Easy Connect Naming method used to connect to a
  /// [gcpOracleDatabaseId] Database instance id of database in Oracle Database @ Google Cloud.
  /// [password] Input only. The password Oracle Goldengate uses in plain text.
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [sessionMode] The mode of the database connection session to be established by the data
  /// [technologyType] The technology type.
  /// [username] The username Oracle Goldengate uses to connect.
  /// [walletFile] The wallet contents Oracle Goldengate uses to make connections to a
  const GoldengateConnectionPropertiesOracleConnectionProperties({
    this.authenticationMode,
    this.connectionString,
    this.gcpOracleDatabaseId,
    this.password,
    this.passwordSecretVersion,
    this.sessionMode,
    this.technologyType,
    this.username,
    this.walletFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'connectionString': ?connectionString,
      'gcpOracleDatabaseId': ?gcpOracleDatabaseId,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'sessionMode': ?sessionMode,
      'technologyType': ?technologyType,
      'username': ?username,
      'walletFile': ?walletFile,
    };
  }

  factory GoldengateConnectionPropertiesOracleConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesOracleConnectionProperties(
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcpOracleDatabaseId: (() { final guardedValue = map['gcpOracleDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionMode: (() { final guardedValue = map['sessionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      walletFile: (() { final guardedValue = map['walletFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
