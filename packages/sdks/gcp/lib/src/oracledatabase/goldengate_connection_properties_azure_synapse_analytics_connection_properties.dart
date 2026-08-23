// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesAzureSynapseAnalyticsConnectionProperties {
  /// JDBC connection string.
  /// e.g.:
  /// 'jdbc:sqlserver://.sql.azuresynapse.net:1433;database=;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.sql.azuresynapse.net;loginTimeout=300;'
  final pulumi.Input<String>? connectionString;
  /// Input only. The password Oracle Goldengate uses for Azure Synapse Analytics
  /// connection in plain text.
  final pulumi.Input<String>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses for Azure Synapse Analytics
  /// connection.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String>? passwordSecretVersion;
  /// The technology type of AzureSynapseAnalyticsConnection.
  final pulumi.Input<String>? technologyType;
  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  final pulumi.Input<String>? username;

  /// Creates a new [GoldengateConnectionPropertiesAzureSynapseAnalyticsConnectionProperties].
  /// [connectionString] JDBC connection string.
  /// [password] Input only. The password Oracle Goldengate uses for Azure Synapse Analytics
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [technologyType] The technology type of AzureSynapseAnalyticsConnection.
  /// [username] The username Oracle Goldengate uses to connect the associated system of
  const GoldengateConnectionPropertiesAzureSynapseAnalyticsConnectionProperties({
    this.connectionString,
    this.password,
    this.passwordSecretVersion,
    this.technologyType,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesAzureSynapseAnalyticsConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesAzureSynapseAnalyticsConnectionProperties(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
