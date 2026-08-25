// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesAmazonRedshiftConnectionProperties {
  /// Connection URL.
  /// e.g.:
  /// 'jdbc:redshift://aws-redshift-instance.aaaaaaaaaaaa.us-east-2.redshift.amazonaws.com:5439/mydb'
  final pulumi.Input<String?>? connectionUrl;
  /// Input only. The password Oracle Goldengate uses for Amazon Redshift connection
  /// in plain text.
  final pulumi.Input<String?>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses for Amazon Redshift connection.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? passwordSecretVersion;
  /// The technology type of AmazonS3Connection.
  final pulumi.Input<String?>? technologyType;
  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  ///
  /// &lt;a name="nestedPropertiesAmazonS3ConnectionProperties"&gt;&lt;/a&gt;The `amazonS3ConnectionProperties` block supports:
  final pulumi.Input<String?>? username;

  /// Creates a new [GoldengateConnectionPropertiesAmazonRedshiftConnectionProperties].
  /// [connectionUrl] Connection URL.
  /// [password] Input only. The password Oracle Goldengate uses for Amazon Redshift connection
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [technologyType] The technology type of AmazonS3Connection.
  /// [username] The username Oracle Goldengate uses to connect the associated system of
  const GoldengateConnectionPropertiesAmazonRedshiftConnectionProperties({
    this.connectionUrl,
    this.password,
    this.passwordSecretVersion,
    this.technologyType,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionUrl': ?connectionUrl,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesAmazonRedshiftConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesAmazonRedshiftConnectionProperties(
      connectionUrl: (() { final guardedValue = map['connectionUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
