// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContainerRegistryDockerCredentials resources.
class ContainerRegistryDockerCredentialsState {
  /// The date and time the registry access token will expire.
  final pulumi.Input<String>? credentialExpirationTime;
  /// Credentials for the container registry.
  final pulumi.Input<String>? dockerCredentials;
  /// The amount of time to pass before the Docker credentials expire in seconds. Defaults to 1576800000, or roughly 50 years. Must be greater than 0 and less than 1576800000.
  final pulumi.Input<int>? expirySeconds;
  /// The name of the container registry.
  final pulumi.Input<String>? registryName;
  /// Allow for write access to the container registry. Defaults to false.
  final pulumi.Input<bool>? write;

  /// Creates a new [ContainerRegistryDockerCredentialsState].
  /// [credentialExpirationTime] The date and time the registry access token will expire.
  /// [dockerCredentials] Credentials for the container registry.
  /// [expirySeconds] The amount of time to pass before the Docker credentials expire in seconds. Defaults to 1576800000, or roughly 50 years. Must be greater than 0 and less than 1576800000.
  /// [registryName] The name of the container registry.
  /// [write] Allow for write access to the container registry. Defaults to false.
  const ContainerRegistryDockerCredentialsState({
    this.credentialExpirationTime,
    this.dockerCredentials,
    this.expirySeconds,
    this.registryName,
    this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialExpirationTime': ?credentialExpirationTime,
      'dockerCredentials': ?dockerCredentials,
      'expirySeconds': ?expirySeconds,
      'registryName': ?registryName,
      'write': ?write,
    };
  }

  factory ContainerRegistryDockerCredentialsState.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryDockerCredentialsState(
      credentialExpirationTime: (() { final guardedValue = map['credentialExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerCredentials: (() { final guardedValue = map['dockerCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirySeconds: (() { final guardedValue = map['expirySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      registryName: (() { final guardedValue = map['registryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      write: (() { final guardedValue = map['write']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

