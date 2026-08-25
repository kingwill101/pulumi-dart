// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_properties_microsoft_sqlserver_connection_properties_additional_attribute.dart';

class GoldengateConnectionPropertiesMicrosoftSqlserverConnectionProperties {
  /// An array of name-value pair attribute entries.
  /// Used as additional parameters in connection string.
  /// Structure is documented below.
  final pulumi.Input<List<GoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttribute>?>? additionalAttributes;
  /// The name of the database.
  final pulumi.Input<String?>? database;
  /// The name or address of a host.
  final pulumi.Input<String?>? host;
  /// Input only. The password Oracle Goldengate uses for Microsoft SQL Server connection
  /// in plain text.
  final pulumi.Input<String?>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses for Microsoft SQL Server
  /// connection.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? passwordSecretVersion;
  /// The port of an endpoint usually specified for a connection.
  final pulumi.Input<int?>? port;
  /// Security Type for Microsoft SQL Server.
  /// Possible values:
  /// PLAIN
  /// TLS
  final pulumi.Input<String?>? securityProtocol;
  /// If set to true, the driver validates the certificate that is sent by the
  /// database server.
  final pulumi.Input<bool?>? serverCertificateValidationRequired;
  /// Database Certificate - The content of a .pem or .crt file
  /// containing the server public key (for 1-way SSL).
  final pulumi.Input<String?>? sslCaFile;
  /// The technology type of MicrosoftSqlserverConnection.
  final pulumi.Input<String?>? technologyType;
  /// The username Oracle Goldengate uses to connect to the Microsoft SQL
  /// Server.
  final pulumi.Input<String?>? username;

  /// Creates a new [GoldengateConnectionPropertiesMicrosoftSqlserverConnectionProperties].
  /// [additionalAttributes] An array of name-value pair attribute entries.
  /// [database] The name of the database.
  /// [host] The name or address of a host.
  /// [password] Input only. The password Oracle Goldengate uses for Microsoft SQL Server connection
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [port] The port of an endpoint usually specified for a connection.
  /// [securityProtocol] Security Type for Microsoft SQL Server.
  /// [serverCertificateValidationRequired] If set to true, the driver validates the certificate that is sent by the
  /// [sslCaFile] Database Certificate - The content of a .pem or .crt file
  /// [technologyType] The technology type of MicrosoftSqlserverConnection.
  /// [username] The username Oracle Goldengate uses to connect to the Microsoft SQL
  const GoldengateConnectionPropertiesMicrosoftSqlserverConnectionProperties({
    this.additionalAttributes,
    this.database,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.securityProtocol,
    this.serverCertificateValidationRequired,
    this.sslCaFile,
    this.technologyType,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalAttributes': ?pulumi.Input.mapOptionalInputValue<List<GoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttribute>, List<Map<String, dynamic>>>(additionalAttributes, (value) => pulumi.Input.encodeList<GoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'database': ?database,
      'host': ?host,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'port': ?port,
      'securityProtocol': ?securityProtocol,
      'serverCertificateValidationRequired': ?serverCertificateValidationRequired,
      'sslCaFile': ?sslCaFile,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesMicrosoftSqlserverConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesMicrosoftSqlserverConnectionProperties(
      additionalAttributes: (() { final guardedValue = map['additionalAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttribute>(guardedValue, (value) => GoldengateConnectionPropertiesMicrosoftSqlserverConnectionPropertiesAdditionalAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      securityProtocol: (() { final guardedValue = map['securityProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverCertificateValidationRequired: (() { final guardedValue = map['serverCertificateValidationRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sslCaFile: (() { final guardedValue = map['sslCaFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
