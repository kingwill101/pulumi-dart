// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildx_builder_docker_container.dart';
import 'buildx_builder_kubernetes.dart';
import 'buildx_builder_remote.dart';

/// {@template pulumi_index_buildx_builder_buildx_builder_args_doc}
/// The set of arguments for BuildxBuilder.
/// {@endtemplate}
/// {@macro pulumi_index_buildx_builder_buildx_builder_args_doc}
class BuildxBuilderArgs {
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

  /// Creates a new [BuildxBuilderArgs].
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
  BuildxBuilderArgs({
    pulumi.Output<bool>? append,
    pulumi.Output<bool>? bootstrap,
    pulumi.Output<String>? buildkitConfig,
    pulumi.Output<String>? buildkitFlags,
    pulumi.Output<BuildxBuilderDockerContainer>? dockerContainer,
    pulumi.Output<String>? driver,
    pulumi.Output<Map<String, String>>? driverOptions,
    pulumi.Output<String>? endpoint,
    pulumi.Output<BuildxBuilderKubernetes>? kubernetes,
    pulumi.Output<String>? name,
    pulumi.Output<String>? node,
    pulumi.Output<List<String>>? platforms,
    pulumi.Output<BuildxBuilderRemote>? remote,
    pulumi.Output<bool>? use,
  }) :
      append = pulumi.Input.asOptionalInput<bool>(append),
      bootstrap = pulumi.Input.asOptionalInput<bool>(bootstrap),
      buildkitConfig = pulumi.Input.asOptionalInput<String>(buildkitConfig),
      buildkitFlags = pulumi.Input.asOptionalInput<String>(buildkitFlags),
      dockerContainer = pulumi.Input.asOptionalInput<BuildxBuilderDockerContainer>(dockerContainer),
      driver = pulumi.Input.asOptionalInput<String>(driver),
      driverOptions = pulumi.Input.asOptionalInput<Map<String, String>>(driverOptions),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      kubernetes = pulumi.Input.asOptionalInput<BuildxBuilderKubernetes>(kubernetes),
      name = pulumi.Input.asOptionalInput<String>(name),
      node = pulumi.Input.asOptionalInput<String>(node),
      platforms = pulumi.Input.asOptionalInput<List<String>>(platforms),
      remote = pulumi.Input.asOptionalInput<BuildxBuilderRemote>(remote),
      use = pulumi.Input.asOptionalInput<bool>(use);

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

  factory BuildxBuilderArgs.fromMap(Map<String, dynamic> map) {
    return BuildxBuilderArgs(
      append: map['append'] == null ? null : pulumi.Output.create<bool>(map['append'] as bool),
      bootstrap: map['bootstrap'] == null ? null : pulumi.Output.create<bool>(map['bootstrap'] as bool),
      buildkitConfig: map['buildkitConfig'] == null ? null : pulumi.Output.create<String>(map['buildkitConfig'] as String),
      buildkitFlags: map['buildkitFlags'] == null ? null : pulumi.Output.create<String>(map['buildkitFlags'] as String),
      dockerContainer: map['dockerContainer'] == null ? null : pulumi.Output.create<BuildxBuilderDockerContainer>(BuildxBuilderDockerContainer.fromMap((map['dockerContainer'] as Map).cast<String, dynamic>())),
      driver: map['driver'] == null ? null : pulumi.Output.create<String>(map['driver'] as String),
      driverOptions: map['driverOptions'] == null ? null : pulumi.Output.create<Map<String, String>>((map['driverOptions'] as Map).cast<String, String>()),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      kubernetes: map['kubernetes'] == null ? null : pulumi.Output.create<BuildxBuilderKubernetes>(BuildxBuilderKubernetes.fromMap((map['kubernetes'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      node: map['node'] == null ? null : pulumi.Output.create<String>(map['node'] as String),
      platforms: map['platforms'] == null ? null : pulumi.Output.create<List<String>>((map['platforms'] as List).cast<String>()),
      remote: map['remote'] == null ? null : pulumi.Output.create<BuildxBuilderRemote>(BuildxBuilderRemote.fromMap((map['remote'] as Map).cast<String, dynamic>())),
      use: map['use'] == null ? null : pulumi.Output.create<bool>(map['use'] as bool),
    );
  }
}

