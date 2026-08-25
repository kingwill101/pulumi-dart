// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesRedisConnectionProperties {
  /// Authentication type for Redis.
  /// Possible values:
  /// NONE
  /// BASIC
  final pulumi.Input<String?>? authenticationType;
  /// The content of the KeyStore file.
  final pulumi.Input<String?>? keyStoreFile;
  /// Input only. The KeyStore password in plain text.
  final pulumi.Input<String?>? keyStorePassword;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the KeyStore password.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? keyStorePasswordSecretVersion;
  /// Input only. The password Oracle Goldengate uses for Redis connection in plain text.
  final pulumi.Input<String?>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses for Redis connection.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? passwordSecretVersion;
  /// The OCID of the Redis cluster.
  final pulumi.Input<String?>? redisClusterId;
  /// Security protocol for Redis.
  /// Possible values:
  /// PLAIN
  /// TLS
  /// MTLS
  final pulumi.Input<String?>? securityProtocol;
  /// Comma separated list of Redis server addresses, specified as host:port
  /// entries, where :port is optional. If port is not specified, it defaults
  /// to 6379. Example: "server1.example.com:6379,server2.example.com:6379"
  final pulumi.Input<String?>? servers;
  /// The technology type of RedisConnection.
  final pulumi.Input<String?>? technologyType;
  /// The content of the TrustStore file.
  final pulumi.Input<String?>? trustStoreFile;
  /// Input only. The TrustStore password in plain text.
  final pulumi.Input<String?>? trustStorePassword;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the TrustStore password.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? trustStorePasswordSecretVersion;
  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  final pulumi.Input<String?>? username;

  /// Creates a new [GoldengateConnectionPropertiesRedisConnectionProperties].
  /// [authenticationType] Authentication type for Redis.
  /// [keyStoreFile] The content of the KeyStore file.
  /// [keyStorePassword] Input only. The KeyStore password in plain text.
  /// [keyStorePasswordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [password] Input only. The password Oracle Goldengate uses for Redis connection in plain text.
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [redisClusterId] The OCID of the Redis cluster.
  /// [securityProtocol] Security protocol for Redis.
  /// [servers] Comma separated list of Redis server addresses, specified as host:port
  /// [technologyType] The technology type of RedisConnection.
  /// [trustStoreFile] The content of the TrustStore file.
  /// [trustStorePassword] Input only. The TrustStore password in plain text.
  /// [trustStorePasswordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [username] The username Oracle Goldengate uses to connect the associated system of
  const GoldengateConnectionPropertiesRedisConnectionProperties({
    this.authenticationType,
    this.keyStoreFile,
    this.keyStorePassword,
    this.keyStorePasswordSecretVersion,
    this.password,
    this.passwordSecretVersion,
    this.redisClusterId,
    this.securityProtocol,
    this.servers,
    this.technologyType,
    this.trustStoreFile,
    this.trustStorePassword,
    this.trustStorePasswordSecretVersion,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'keyStoreFile': ?keyStoreFile,
      'keyStorePassword': ?keyStorePassword,
      'keyStorePasswordSecretVersion': ?keyStorePasswordSecretVersion,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'redisClusterId': ?redisClusterId,
      'securityProtocol': ?securityProtocol,
      'servers': ?servers,
      'technologyType': ?technologyType,
      'trustStoreFile': ?trustStoreFile,
      'trustStorePassword': ?trustStorePassword,
      'trustStorePasswordSecretVersion': ?trustStorePasswordSecretVersion,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesRedisConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesRedisConnectionProperties(
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStoreFile: (() { final guardedValue = map['keyStoreFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStorePassword: (() { final guardedValue = map['keyStorePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStorePasswordSecretVersion: (() { final guardedValue = map['keyStorePasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redisClusterId: (() { final guardedValue = map['redisClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProtocol: (() { final guardedValue = map['securityProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStoreFile: (() { final guardedValue = map['trustStoreFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStorePassword: (() { final guardedValue = map['trustStorePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStorePasswordSecretVersion: (() { final guardedValue = map['trustStorePasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
