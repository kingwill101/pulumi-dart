// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_container_registry_docker_credentials_container_registry_docker_credentials_args_doc}
/// The set of arguments for ContainerRegistryDockerCredentials.
/// {@endtemplate}
/// {@macro pulumi_index_container_registry_docker_credentials_container_registry_docker_credentials_args_doc}
class ContainerRegistryDockerCredentialsArgs {
  /// The amount of time to pass before the Docker credentials expire in seconds. Defaults to 1576800000, or roughly 50 years. Must be greater than 0 and less than 1576800000.
  final pulumi.Input<int>? expirySeconds;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// Allow for write access to the container registry. Defaults to false.
  final pulumi.Input<bool>? write;

  /// Creates a new [ContainerRegistryDockerCredentialsArgs].
  /// [expirySeconds] The amount of time to pass before the Docker credentials expire in seconds. Defaults to 1576800000, or roughly 50 years. Must be greater than 0 and less than 1576800000.
  /// [registryName] The name of the container registry.
  /// [write] Allow for write access to the container registry. Defaults to false.
  const ContainerRegistryDockerCredentialsArgs({
    this.expirySeconds,
    required this.registryName,
    this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirySeconds': ?expirySeconds,
      'registryName': registryName,
      'write': ?write,
    };
  }

  factory ContainerRegistryDockerCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryDockerCredentialsArgs(
      expirySeconds: (() { final guardedValue = map['expirySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      write: (() { final guardedValue = map['write']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
