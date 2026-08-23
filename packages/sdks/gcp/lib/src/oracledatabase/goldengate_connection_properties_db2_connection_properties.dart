// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_properties_db2_connection_properties_additional_attribute.dart';

class GoldengateConnectionPropertiesDb2ConnectionProperties {
  /// An array of name-value pair attribute entries.
  /// Used as additional parameters in connection string.
  final pulumi.Input<List<GoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttribute>>? additionalAttributes;
  /// The name of the database.
  final pulumi.Input<String>? database;
  /// The name or address of a host.
  final pulumi.Input<String>? host;
  /// Input only. The password Oracle Goldengate uses for Db2 connection in plain text.
  final pulumi.Input<String>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses for Db2 connection.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String>? passwordSecretVersion;
  /// The port of an endpoint usually specified for a connection.
  final pulumi.Input<int>? port;
  /// Security protocol for the DB2 database.
  /// Possible values:
  /// PLAIN
  /// TLS
  final pulumi.Input<String>? securityProtocol;
  /// The keystash file which contains the encrypted password to
  /// the key database file. Not supported for IBM Db2 for i.
  final pulumi.Input<String>? sslClientKeystashFile;
  /// The keystore file created at the client containing the
  /// server certificate / CA root certificate. Not supported for IBM Db2 for i.
  final pulumi.Input<String>? sslClientKeystoredbFile;
  /// The file which contains the self-signed server certificate
  /// / Certificate Authority (CA) certificate.
  final pulumi.Input<String>? sslServerCertificateFile;
  /// The technology type of Db2Connection.
  final pulumi.Input<String>? technologyType;
  /// The username Oracle Goldengate uses to connect to the DB2 database.
  final pulumi.Input<String>? username;

  /// Creates a new [GoldengateConnectionPropertiesDb2ConnectionProperties].
  /// [additionalAttributes] An array of name-value pair attribute entries.
  /// [database] The name of the database.
  /// [host] The name or address of a host.
  /// [password] Input only. The password Oracle Goldengate uses for Db2 connection in plain text.
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [port] The port of an endpoint usually specified for a connection.
  /// [securityProtocol] Security protocol for the DB2 database.
  /// [sslClientKeystashFile] The keystash file which contains the encrypted password to
  /// [sslClientKeystoredbFile] The keystore file created at the client containing the
  /// [sslServerCertificateFile] The file which contains the self-signed server certificate
  /// [technologyType] The technology type of Db2Connection.
  /// [username] The username Oracle Goldengate uses to connect to the DB2 database.
  const GoldengateConnectionPropertiesDb2ConnectionProperties({
    this.additionalAttributes,
    this.database,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.securityProtocol,
    this.sslClientKeystashFile,
    this.sslClientKeystoredbFile,
    this.sslServerCertificateFile,
    this.technologyType,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAttributes': ?pulumi.Input.mapOptionalInputValue<List<GoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttribute>, List<Map<String, dynamic>>>(additionalAttributes, (value) => pulumi.Input.encodeList<GoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'database': ?database,
      'host': ?host,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'port': ?port,
      'securityProtocol': ?securityProtocol,
      'sslClientKeystashFile': ?sslClientKeystashFile,
      'sslClientKeystoredbFile': ?sslClientKeystoredbFile,
      'sslServerCertificateFile': ?sslServerCertificateFile,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesDb2ConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesDb2ConnectionProperties(
      additionalAttributes: (() { final guardedValue = map['additionalAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttribute>(guardedValue, (value) => GoldengateConnectionPropertiesDb2ConnectionPropertiesAdditionalAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      securityProtocol: (() { final guardedValue = map['securityProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslClientKeystashFile: (() { final guardedValue = map['sslClientKeystashFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslClientKeystoredbFile: (() { final guardedValue = map['sslClientKeystoredbFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslServerCertificateFile: (() { final guardedValue = map['sslServerCertificateFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
