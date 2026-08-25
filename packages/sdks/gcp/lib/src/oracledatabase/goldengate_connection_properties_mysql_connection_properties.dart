// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_properties_mysql_connection_properties_additional_attribute.dart';

class GoldengateConnectionPropertiesMysqlConnectionProperties {
  /// An array of name-value pair attribute entries.
  /// Used as additional parameters in connection string.
  /// Structure is documented below.
  final pulumi.Input<List<GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttribute>?>? additionalAttributes;
  /// The name of the database.
  final pulumi.Input<String?>? database;
  /// The OCID of the database system being referenced.
  final pulumi.Input<String?>? dbSystemId;
  /// The name or address of a host.
  final pulumi.Input<String?>? host;
  /// Input only. The password Oracle Goldengate uses to connect to MySQL in plain text.
  final pulumi.Input<String?>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses to connect to MySQL.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? passwordSecretVersion;
  /// The port of an endpoint usually specified for a connection.
  final pulumi.Input<int?>? port;
  /// Security Type for MySQL.
  /// Possible values:
  /// PLAIN
  /// TLS
  /// MTLS
  final pulumi.Input<String?>? securityProtocol;
  /// Database Certificate - The content of a .pem or .crt file
  /// containing the server public key (for 1 and 2-way SSL).
  final pulumi.Input<String?>? sslCaFile;
  /// Client Certificate - The content of a .pem or .crt file
  /// containing the client public key (for 2-way SSL).
  final pulumi.Input<String?>? sslCertFile;
  /// The list of certificates revoked by the trusted
  /// certificate authorities (Trusted CA).
  final pulumi.Input<String?>? sslCrlFile;
  /// Client Key - The content of a .pem or .crt file containing
  /// the client private key (for 2-way SSL).
  final pulumi.Input<String?>? sslKeyFile;
  /// SSL modes for MySQL.
  /// Possible values:
  /// DISABLED
  /// PREFERRED
  /// REQUIRED
  /// VERIFY_CA
  /// VERIFY_IDENTITY
  final pulumi.Input<String?>? sslMode;
  /// The technology type of MysqlConnection.
  final pulumi.Input<String?>? technologyType;
  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  final pulumi.Input<String?>? username;

  /// Creates a new [GoldengateConnectionPropertiesMysqlConnectionProperties].
  /// [additionalAttributes] An array of name-value pair attribute entries.
  /// [database] The name of the database.
  /// [dbSystemId] The OCID of the database system being referenced.
  /// [host] The name or address of a host.
  /// [password] Input only. The password Oracle Goldengate uses to connect to MySQL in plain text.
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [port] The port of an endpoint usually specified for a connection.
  /// [securityProtocol] Security Type for MySQL.
  /// [sslCaFile] Database Certificate - The content of a .pem or .crt file
  /// [sslCertFile] Client Certificate - The content of a .pem or .crt file
  /// [sslCrlFile] The list of certificates revoked by the trusted
  /// [sslKeyFile] Client Key - The content of a .pem or .crt file containing
  /// [sslMode] SSL modes for MySQL.
  /// [technologyType] The technology type of MysqlConnection.
  /// [username] The username Oracle Goldengate uses to connect the associated system of
  const GoldengateConnectionPropertiesMysqlConnectionProperties({
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
      'additionalAttributes': ?pulumi.Input.mapOptionalInputValue<List<GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttribute>, List<Map<String, dynamic>>>(additionalAttributes, (value) => pulumi.Input.encodeList<GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory GoldengateConnectionPropertiesMysqlConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesMysqlConnectionProperties(
      additionalAttributes: (() { final guardedValue = map['additionalAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttribute>(guardedValue, (value) => GoldengateConnectionPropertiesMysqlConnectionPropertiesAdditionalAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
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
