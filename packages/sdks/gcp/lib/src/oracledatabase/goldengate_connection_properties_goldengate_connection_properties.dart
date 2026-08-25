// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesGoldengateConnectionProperties {
  /// The name of the GoldengateDeployment associated with the
  /// GoldengateConnection.
  /// Format:
  /// projects/{project}/locations/{location}/goldengateDeployments/{goldengate_deployment}
  final pulumi.Input<String?>? goldengateDeploymentId;
  /// The host of the GoldengateConnection.
  final pulumi.Input<String?>? host;
  /// Input only. The password used to connect to the Oracle Goldengate in plain text.
  final pulumi.Input<String?>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password used to connect to the Oracle Goldengate.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? passwordSecretVersion;
  /// The port of the GoldengateConnection.
  final pulumi.Input<int?>? port;
  /// The technology type.
  final pulumi.Input<String?>? technologyType;
  /// The username credential.
  final pulumi.Input<String?>? username;

  /// Creates a new [GoldengateConnectionPropertiesGoldengateConnectionProperties].
  /// [goldengateDeploymentId] The name of the GoldengateDeployment associated with the
  /// [host] The host of the GoldengateConnection.
  /// [password] Input only. The password used to connect to the Oracle Goldengate in plain text.
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [port] The port of the GoldengateConnection.
  /// [technologyType] The technology type.
  /// [username] The username credential.
  const GoldengateConnectionPropertiesGoldengateConnectionProperties({
    this.goldengateDeploymentId,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.technologyType,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goldengateDeploymentId': ?goldengateDeploymentId,
      'host': ?host,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'port': ?port,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesGoldengateConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesGoldengateConnectionProperties(
      goldengateDeploymentId: (() { final guardedValue = map['goldengateDeploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
