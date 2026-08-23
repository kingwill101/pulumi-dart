// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesDatabricksConnectionProperties {
  /// Authentication type for Databricks.
  /// Possible values:
  /// PERSONAL_ACCESS_TOKEN
  /// OAUTH_M2M
  final pulumi.Input<String>? authenticationType;
  /// OAuth client id, only applicable for authenticationType == OAUTH_M2M
  final pulumi.Input<String>? clientId;
  /// OAuth client secret, only applicable for authenticationType == OAUTH_M2M
  final pulumi.Input<String>? clientSecret;
  /// Connection URL.
  /// e.g.:
  /// 'jdbc:databricks://adb-33934.4.azuredatabricks.net:443/default;transportMode=http;ssl=1;httpPath=sql/protocolv1/o/3393########44/0##3-7-hlrb'
  final pulumi.Input<String>? connectionUrl;
  /// Input only. The password Oracle Goldengate uses for Db2 connection in plain text.
  final pulumi.Input<String>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses for Db2 connection.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String>? passwordSecretVersion;
  /// External storage credential name to access files on object
  /// storage such as ADLS Gen2, S3 or Cloud Storage.
  final pulumi.Input<String>? storageCredential;
  /// The technology type of Db2Connection.
  final pulumi.Input<String>? technologyType;

  /// Creates a new [GoldengateConnectionPropertiesDatabricksConnectionProperties].
  /// [authenticationType] Authentication type for Databricks.
  /// [clientId] OAuth client id, only applicable for authenticationType == OAUTH_M2M
  /// [clientSecret] OAuth client secret, only applicable for authenticationType == OAUTH_M2M
  /// [connectionUrl] Connection URL.
  /// [password] Input only. The password Oracle Goldengate uses for Db2 connection in plain text.
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [storageCredential] External storage credential name to access files on object
  /// [technologyType] The technology type of Db2Connection.
  const GoldengateConnectionPropertiesDatabricksConnectionProperties({
    this.authenticationType,
    this.clientId,
    this.clientSecret,
    this.connectionUrl,
    this.password,
    this.passwordSecretVersion,
    this.storageCredential,
    this.technologyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'connectionUrl': ?connectionUrl,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'storageCredential': ?storageCredential,
      'technologyType': ?technologyType,
    };
  }

  factory GoldengateConnectionPropertiesDatabricksConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesDatabricksConnectionProperties(
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionUrl: (() { final guardedValue = map['connectionUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageCredential: (() { final guardedValue = map['storageCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
