// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesMongodbConnectionProperties {
  /// MongoDB connection string.
  /// e.g.: 'mongodb://mongodb0.example.com:27017/recordsrecords'
  final pulumi.Input<String?>? connectionString;
  /// The OCID of the Oracle Autonomous Json Database.
  final pulumi.Input<String?>? databaseId;
  /// Input only. The password Oracle Goldengate uses to connect the Mongodb connection in
  /// plain text.
  final pulumi.Input<String?>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses to connect the Mongodb connection.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? passwordSecretVersion;
  /// Security Type for MongoDB.
  /// Possible values:
  /// PLAIN
  /// TLS
  /// MTLS
  final pulumi.Input<String?>? securityProtocol;
  /// The technology type of MongodbConnection.
  final pulumi.Input<String?>? technologyType;
  /// Database Certificate - The content of a .pem file,
  /// containing the server public key (for 1 and 2-way SSL).
  final pulumi.Input<String?>? tlsCaFile;
  /// Client Certificate - The content of a .pem file, containing
  /// the client public key (for 2-way SSL).
  final pulumi.Input<String?>? tlsCertificateKeyFile;
  /// Input only. The Client Certificate key file password in plain text.
  final pulumi.Input<String?>? tlsCertificateKeyFilePassword;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the Client Certificate key file password in Secret Manager.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? tlsCertificateKeyFilePasswordSecretVersion;
  /// The username Oracle Goldengate uses to connect to the database.
  final pulumi.Input<String?>? username;

  /// Creates a new [GoldengateConnectionPropertiesMongodbConnectionProperties].
  /// [connectionString] MongoDB connection string.
  /// [databaseId] The OCID of the Oracle Autonomous Json Database.
  /// [password] Input only. The password Oracle Goldengate uses to connect the Mongodb connection in
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [securityProtocol] Security Type for MongoDB.
  /// [technologyType] The technology type of MongodbConnection.
  /// [tlsCaFile] Database Certificate - The content of a .pem file,
  /// [tlsCertificateKeyFile] Client Certificate - The content of a .pem file, containing
  /// [tlsCertificateKeyFilePassword] Input only. The Client Certificate key file password in plain text.
  /// [tlsCertificateKeyFilePasswordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [username] The username Oracle Goldengate uses to connect to the database.
  const GoldengateConnectionPropertiesMongodbConnectionProperties({
    this.connectionString,
    this.databaseId,
    this.password,
    this.passwordSecretVersion,
    this.securityProtocol,
    this.technologyType,
    this.tlsCaFile,
    this.tlsCertificateKeyFile,
    this.tlsCertificateKeyFilePassword,
    this.tlsCertificateKeyFilePasswordSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'databaseId': ?databaseId,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'securityProtocol': ?securityProtocol,
      'technologyType': ?technologyType,
      'tlsCaFile': ?tlsCaFile,
      'tlsCertificateKeyFile': ?tlsCertificateKeyFile,
      'tlsCertificateKeyFilePassword': ?tlsCertificateKeyFilePassword,
      'tlsCertificateKeyFilePasswordSecretVersion': ?tlsCertificateKeyFilePasswordSecretVersion,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesMongodbConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesMongodbConnectionProperties(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseId: (() { final guardedValue = map['databaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProtocol: (() { final guardedValue = map['securityProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsCaFile: (() { final guardedValue = map['tlsCaFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsCertificateKeyFile: (() { final guardedValue = map['tlsCertificateKeyFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsCertificateKeyFilePassword: (() { final guardedValue = map['tlsCertificateKeyFilePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlsCertificateKeyFilePasswordSecretVersion: (() { final guardedValue = map['tlsCertificateKeyFilePasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
