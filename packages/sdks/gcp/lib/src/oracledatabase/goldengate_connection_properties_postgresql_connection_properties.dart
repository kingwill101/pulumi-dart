// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_properties_postgresql_connection_properties_additional_attribute.dart';

class GoldengateConnectionPropertiesPostgresqlConnectionProperties {
  /// An array of name-value pair attribute entries.
  /// Used as additional parameters in connection string.
  /// Structure is documented below.
  final pulumi.Input<List<GoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttribute>?>? additionalAttributes;
  /// The name of the database.
  final pulumi.Input<String?>? database;
  /// The OCID of the database system being referenced.
  final pulumi.Input<String?>? dbSystemId;
  /// The name or address of a host.
  final pulumi.Input<String?>? host;
  /// Input only. The password Oracle Goldengate uses for PostgreSQL connection in plain
  /// text.
  final pulumi.Input<String?>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses for PostgreSQL connection.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? passwordSecretVersion;
  /// The port of an endpoint usually specified for a connection.
  final pulumi.Input<int?>? port;
  /// Security protocol for PostgreSQL.
  /// Possible values:
  /// PLAIN
  /// TLS
  /// MTLS
  final pulumi.Input<String?>? securityProtocol;
  /// The certificate of the trusted certificate authorities
  /// (Trusted CA) for PostgreSQL.
  final pulumi.Input<String?>? sslCaFile;
  /// The certificate of the PostgreSQL server.
  final pulumi.Input<String?>? sslCertFile;
  /// The list of certificates revoked by the trusted
  /// certificate authorities (Trusted CA).
  final pulumi.Input<String?>? sslCrlFile;
  /// The private key of the PostgreSQL server.
  final pulumi.Input<String?>? sslKeyFile;
  /// SSL modes for PostgreSQL.
  /// Possible values:
  /// PREFER
  /// REQUIRE
  /// VERIFY_CA
  /// VERIFY_FULL
  final pulumi.Input<String?>? sslMode;
  /// The technology type of PostgresqlConnection.
  final pulumi.Input<String?>? technologyType;
  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  final pulumi.Input<String?>? username;

  /// Creates a new [GoldengateConnectionPropertiesPostgresqlConnectionProperties].
  /// [additionalAttributes] An array of name-value pair attribute entries.
  /// [database] The name of the database.
  /// [dbSystemId] The OCID of the database system being referenced.
  /// [host] The name or address of a host.
  /// [password] Input only. The password Oracle Goldengate uses for PostgreSQL connection in plain
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [port] The port of an endpoint usually specified for a connection.
  /// [securityProtocol] Security protocol for PostgreSQL.
  /// [sslCaFile] The certificate of the trusted certificate authorities
  /// [sslCertFile] The certificate of the PostgreSQL server.
  /// [sslCrlFile] The list of certificates revoked by the trusted
  /// [sslKeyFile] The private key of the PostgreSQL server.
  /// [sslMode] SSL modes for PostgreSQL.
  /// [technologyType] The technology type of PostgresqlConnection.
  /// [username] The username Oracle Goldengate uses to connect the associated system of
  const GoldengateConnectionPropertiesPostgresqlConnectionProperties({
    this.additionalAttributes,
    this.database,
    this.dbSystemId,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.securityProtocol,
    this.sslCaFile,
    this.sslCertFile,
    this.sslCrlFile,
    this.sslKeyFile,
    this.sslMode,
    this.technologyType,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAttributes': ?pulumi.Input.mapOptionalInputValue<List<GoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttribute>, List<Map<String, dynamic>>>(additionalAttributes, (value) => pulumi.Input.encodeList<GoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'database': ?database,
      'dbSystemId': ?dbSystemId,
      'host': ?host,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'port': ?port,
      'securityProtocol': ?securityProtocol,
      'sslCaFile': ?sslCaFile,
      'sslCertFile': ?sslCertFile,
      'sslCrlFile': ?sslCrlFile,
      'sslKeyFile': ?sslKeyFile,
      'sslMode': ?sslMode,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesPostgresqlConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesPostgresqlConnectionProperties(
      additionalAttributes: (() { final guardedValue = map['additionalAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttribute>(guardedValue, (value) => GoldengateConnectionPropertiesPostgresqlConnectionPropertiesAdditionalAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbSystemId: (() { final guardedValue = map['dbSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      securityProtocol: (() { final guardedValue = map['securityProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCaFile: (() { final guardedValue = map['sslCaFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertFile: (() { final guardedValue = map['sslCertFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCrlFile: (() { final guardedValue = map['sslCrlFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslKeyFile: (() { final guardedValue = map['sslKeyFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslMode: (() { final guardedValue = map['sslMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
