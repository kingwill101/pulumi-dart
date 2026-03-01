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
  ContainerRegistryDockerCredentialsState({
    pulumi.Output<String>? credentialExpirationTime,
    pulumi.Output<String>? dockerCredentials,
    pulumi.Output<int>? expirySeconds,
    pulumi.Output<String>? registryName,
    pulumi.Output<bool>? write,
  }) :
      credentialExpirationTime = pulumi.Input.asOptionalInput<String>(credentialExpirationTime),
      dockerCredentials = pulumi.Input.asOptionalInput<String>(dockerCredentials),
      expirySeconds = pulumi.Input.asOptionalInput<int>(expirySeconds),
      registryName = pulumi.Input.asOptionalInput<String>(registryName),
      write = pulumi.Input.asOptionalInput<bool>(write);

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
      credentialExpirationTime: map['credentialExpirationTime'] == null ? null : pulumi.Output.create<String>(map['credentialExpirationTime'] as String),
      dockerCredentials: map['dockerCredentials'] == null ? null : pulumi.Output.create<String>(map['dockerCredentials'] as String),
      expirySeconds: map['expirySeconds'] == null ? null : pulumi.Output.create<int>(map['expirySeconds'] as int),
      registryName: map['registryName'] == null ? null : pulumi.Output.create<String>(map['registryName'] as String),
      write: map['write'] == null ? null : pulumi.Output.create<bool>(map['write'] as bool),
    );
  }
}

