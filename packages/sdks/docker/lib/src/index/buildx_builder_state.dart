// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildx_builder_docker_container.dart';
import 'buildx_builder_kubernetes.dart';
import 'buildx_builder_remote.dart';

/// Input properties used for looking up and filtering BuildxBuilder resources.
class BuildxBuilderState {
  /// Append a node to builder instead of changing it
  final pulumi.Input<bool>? append;
  /// Automatically boot the builder after creation. Defaults to `false`
  final pulumi.Input<bool>? bootstrap;
  /// BuildKit daemon config file
  final pulumi.Input<String>? buildkitConfig;
  /// BuildKit flags to set for the builder.
  final pulumi.Input<String>? buildkitFlags;
  /// Configuration block for the Docker-Container driver.
  final pulumi.Input<BuildxBuilderDockerContainer>? dockerContainer;
  /// The driver to use for the Buildx builder (e.g., docker-container, kubernetes).
  final pulumi.Input<String>? driver;
  /// Additional options for the Buildx driver in the form of `key=value,...`. These options are driver-specific.
  final pulumi.Input<Map<String, String>>? driverOptions;
  /// The endpoint or context to use for the Buildx builder, where context is the name of a context from docker context ls and endpoint is the address for Docker socket (eg. DOCKER_HOST value). By default, the current Docker configuration is used for determining the context/endpoint value.
  final pulumi.Input<String>? endpoint;
  /// Configuration block for the Kubernetes driver.
  final pulumi.Input<BuildxBuilderKubernetes>? kubernetes;
  /// The name of the Buildx builder. IF not specified, a random name will be generated.
  final pulumi.Input<String>? name;
  /// Create/modify node with given name
  final pulumi.Input<String>? node;
  /// Fixed platforms for current node
  final pulumi.Input<List<String>>? platforms;
  /// Configuration block for the Remote driver.
  final pulumi.Input<BuildxBuilderRemote>? remote;
  /// Set the current builder instance as the default for the current context.
  final pulumi.Input<bool>? use;

  /// Creates a new [BuildxBuilderState].
  /// [append] Append a node to builder instead of changing it
  /// [bootstrap] Automatically boot the builder after creation. Defaults to `false`
  /// [buildkitConfig] BuildKit daemon config file
  /// [buildkitFlags] BuildKit flags to set for the builder.
  /// [dockerContainer] Configuration block for the Docker-Container driver.
  /// [driver] The driver to use for the Buildx builder (e.g., docker-container, kubernetes).
  /// [driverOptions] Additional options for the Buildx driver in the form of `key=value,...`. These options are driver-specific.
  /// [endpoint] The endpoint or context to use for the Buildx builder, where context is the name of a context from docker context ls and endpoint is the address for Docker socket (eg. DOCKER_HOST value). By default, the current Docker configuration is used for determining the context/endpoint value.
  /// [kubernetes] Configuration block for the Kubernetes driver.
  /// [name] The name of the Buildx builder. IF not specified, a random name will be generated.
  /// [node] Create/modify node with given name
  /// [platforms] Fixed platforms for current node
  /// [remote] Configuration block for the Remote driver.
  /// [use] Set the current builder instance as the default for the current context.
  const BuildxBuilderState({
    this.append,
    this.bootstrap,
    this.buildkitConfig,
    this.buildkitFlags,
    this.dockerContainer,
    this.driver,
    this.driverOptions,
    this.endpoint,
    this.kubernetes,
    this.name,
    this.node,
    this.platforms,
    this.remote,
    this.use,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'append': ?append,
      'bootstrap': ?bootstrap,
      'buildkitConfig': ?buildkitConfig,
      'buildkitFlags': ?buildkitFlags,
      'dockerContainer': ?pulumi.Input.mapOptionalInputValue<BuildxBuilderDockerContainer, Map<String, dynamic>>(dockerContainer, (value) => value.toMap()),
      'driver': ?driver,
      'driverOptions': ?driverOptions,
      'endpoint': ?endpoint,
      'kubernetes': ?pulumi.Input.mapOptionalInputValue<BuildxBuilderKubernetes, Map<String, dynamic>>(kubernetes, (value) => value.toMap()),
      'name': ?name,
      'node': ?node,
      'platforms': ?platforms,
      'remote': ?pulumi.Input.mapOptionalInputValue<BuildxBuilderRemote, Map<String, dynamic>>(remote, (value) => value.toMap()),
      'use': ?use,
    };
  }

  factory BuildxBuilderState.fromMap(Map<String, dynamic> map) {
    return BuildxBuilderState(
      append: (() { final guardedValue = map['append']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bootstrap: (() { final guardedValue = map['bootstrap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      buildkitConfig: (() { final guardedValue = map['buildkitConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildkitFlags: (() { final guardedValue = map['buildkitFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerContainer: (() { final guardedValue = map['dockerContainer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildxBuilderDockerContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      driver: (() { final guardedValue = map['driver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driverOptions: (() { final guardedValue = map['driverOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubernetes: (() { final guardedValue = map['kubernetes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildxBuilderKubernetes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      node: (() { final guardedValue = map['node']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platforms: (() { final guardedValue = map['platforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      remote: (() { final guardedValue = map['remote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildxBuilderRemote.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      use: (() { final guardedValue = map['use']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
