// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesKafkaSchemaRegistryConnectionProperties {
  /// Used authentication mechanism to access Schema Registry.
  /// Possible values:
  /// NONE
  /// BASIC
  /// MUTUAL
  final pulumi.Input<String?>? authenticationType;
  /// The content of the KeyStore file.
  final pulumi.Input<String?>? keyStoreFile;
  /// Input only. The KeyStore password in plain text.
  final pulumi.Input<String?>? keyStorePassword;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the KeyStore password.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? keyStorePasswordSecretVersion;
  /// Input only. The password to access Schema Registry in plain text.
  final pulumi.Input<String?>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password to access Schema Registry using basic authentication.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? passwordSecretVersion;
  /// Input only. The password for the cert inside the KeyStore in plain text.
  final pulumi.Input<String?>? sslKeyPassword;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password for the cert inside the KeyStore.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? sslKeyPasswordSecretVersion;
  /// The technology type of KafkaSchemaRegistryConnection.
  final pulumi.Input<String?>? technologyType;
  /// The content of the TrustStore file.
  final pulumi.Input<String?>? trustStoreFile;
  /// Input only. The TrustStore password in plain text.
  final pulumi.Input<String?>? trustStorePassword;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the TrustStore password.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? trustStorePasswordSecretVersion;
  /// Kafka Schema Registry URL.
  /// e.g.: 'https://server1.us.oracle.com:8081'
  final pulumi.Input<String?>? url;
  /// The username to access Schema Registry using basic authentication.
  /// This value is injected into
  /// 'schema.registry.basic.auth.user.info=user:password' configuration
  /// property.
  final pulumi.Input<String?>? username;

  /// Creates a new [GoldengateConnectionPropertiesKafkaSchemaRegistryConnectionProperties].
  /// [authenticationType] Used authentication mechanism to access Schema Registry.
  /// [keyStoreFile] The content of the KeyStore file.
  /// [keyStorePassword] Input only. The KeyStore password in plain text.
  /// [keyStorePasswordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [password] Input only. The password to access Schema Registry in plain text.
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [sslKeyPassword] Input only. The password for the cert inside the KeyStore in plain text.
  /// [sslKeyPasswordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [technologyType] The technology type of KafkaSchemaRegistryConnection.
  /// [trustStoreFile] The content of the TrustStore file.
  /// [trustStorePassword] Input only. The TrustStore password in plain text.
  /// [trustStorePasswordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [url] Kafka Schema Registry URL.
  /// [username] The username to access Schema Registry using basic authentication.
  const GoldengateConnectionPropertiesKafkaSchemaRegistryConnectionProperties({
    this.authenticationType,
    this.keyStoreFile,
    this.keyStorePassword,
    this.keyStorePasswordSecretVersion,
    this.password,
    this.passwordSecretVersion,
    this.sslKeyPassword,
    this.sslKeyPasswordSecretVersion,
    this.technologyType,
    this.trustStoreFile,
    this.trustStorePassword,
    this.trustStorePasswordSecretVersion,
    this.url,
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
      'sslKeyPassword': ?sslKeyPassword,
      'sslKeyPasswordSecretVersion': ?sslKeyPasswordSecretVersion,
      'technologyType': ?technologyType,
      'trustStoreFile': ?trustStoreFile,
      'trustStorePassword': ?trustStorePassword,
      'trustStorePasswordSecretVersion': ?trustStorePasswordSecretVersion,
      'url': ?url,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesKafkaSchemaRegistryConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesKafkaSchemaRegistryConnectionProperties(
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStoreFile: (() { final guardedValue = map['keyStoreFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStorePassword: (() { final guardedValue = map['keyStorePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStorePasswordSecretVersion: (() { final guardedValue = map['keyStorePasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslKeyPassword: (() { final guardedValue = map['sslKeyPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslKeyPasswordSecretVersion: (() { final guardedValue = map['sslKeyPasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStoreFile: (() { final guardedValue = map['trustStoreFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStorePassword: (() { final guardedValue = map['trustStorePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStorePasswordSecretVersion: (() { final guardedValue = map['trustStorePasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
