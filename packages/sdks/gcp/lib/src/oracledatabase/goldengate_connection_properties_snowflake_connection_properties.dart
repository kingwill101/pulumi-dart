// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesSnowflakeConnectionProperties {
  /// Used authentication mechanism to access Snowflake.
  /// Possible values:
  /// BASIC
  /// KEY_PAIR
  final pulumi.Input<String>? authenticationType;
  /// JDBC connection URL.
  /// e.g.:
  /// 'jdbc:snowflake://.snowflakecomputing.com/?warehouse=&db='
  final pulumi.Input<String>? connectionUrl;
  /// Input only. The password Oracle Goldengate uses to connect to Snowflake platform
  /// in plain text.
  final pulumi.Input<String>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses to connect to Snowflake platform.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String>? passwordSecretVersion;
  /// The content of private key file in PEM format.
  final pulumi.Input<String>? privateKeyFile;
  /// Password if the private key file is encrypted.
  final pulumi.Input<String>? privateKeyPassphraseSecret;
  /// The technology type of SnowflakeConnection.
  final pulumi.Input<String>? technologyType;
  /// The username Oracle Goldengate uses to connect to Snowflake.
  final pulumi.Input<String>? username;

  /// Creates a new [GoldengateConnectionPropertiesSnowflakeConnectionProperties].
  /// [authenticationType] Used authentication mechanism to access Snowflake.
  /// [connectionUrl] JDBC connection URL.
  /// [password] Input only. The password Oracle Goldengate uses to connect to Snowflake platform
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [privateKeyFile] The content of private key file in PEM format.
  /// [privateKeyPassphraseSecret] Password if the private key file is encrypted.
  /// [technologyType] The technology type of SnowflakeConnection.
  /// [username] The username Oracle Goldengate uses to connect to Snowflake.
  const GoldengateConnectionPropertiesSnowflakeConnectionProperties({
    this.authenticationType,
    this.connectionUrl,
    this.password,
    this.passwordSecretVersion,
    this.privateKeyFile,
    this.privateKeyPassphraseSecret,
    this.technologyType,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'connectionUrl': ?connectionUrl,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'privateKeyFile': ?privateKeyFile,
      'privateKeyPassphraseSecret': ?privateKeyPassphraseSecret,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesSnowflakeConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesSnowflakeConnectionProperties(
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionUrl: (() { final guardedValue = map['connectionUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyFile: (() { final guardedValue = map['privateKeyFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyPassphraseSecret: (() { final guardedValue = map['privateKeyPassphraseSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
