// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/provider_registry_auth.dart';

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// PEM-encoded content of Docker host CA certificate
  final pulumi.Input<String>? caMaterial;
  /// PEM-encoded content of Docker client certificate
  final pulumi.Input<String>? certMaterial;
  /// Path to directory with Docker TLS config
  final pulumi.Input<String>? certPath;
  /// The name of the Docker context to use. Can also be set via `DOCKER_CONTEXT` environment variable. Overrides the `host` if set.
  final pulumi.Input<String>? context;
  /// If set to `true`, the provider will not check if the Docker daemon is running. This is useful for resources/data_sourcess that do not require a running Docker daemon, such as the data source `docker.RegistryImage`.
  final pulumi.Input<bool>? disableDockerDaemonCheck;
  /// The Docker daemon address
  final pulumi.Input<String>? host;
  /// PEM-encoded content of Docker client private key
  final pulumi.Input<String>? keyMaterial;
  final pulumi.Input<List<ProviderRegistryAuth>>? registryAuth;
  /// Additional SSH option flags to be appended when using `ssh://` protocol
  final pulumi.Input<List<String>>? sshOpts;

  /// Creates a new [ProviderArgs].
  /// [caMaterial] PEM-encoded content of Docker host CA certificate
  /// [certMaterial] PEM-encoded content of Docker client certificate
  /// [certPath] Path to directory with Docker TLS config
  /// [context] The name of the Docker context to use. Can also be set via `DOCKER_CONTEXT` environment variable. Overrides the `host` if set.
  /// [disableDockerDaemonCheck] If set to `true`, the provider will not check if the Docker daemon is running. This is useful for resources/data_sourcess that do not require a running Docker daemon, such as the data source `docker.RegistryImage`.
  /// [host] The Docker daemon address
  /// [keyMaterial] PEM-encoded content of Docker client private key
  /// [registryAuth] Optional.
  /// [sshOpts] Additional SSH option flags to be appended when using `ssh://` protocol
  ProviderArgs({
    pulumi.Output<String>? caMaterial,
    pulumi.Output<String>? certMaterial,
    pulumi.Output<String>? certPath,
    pulumi.Output<String>? context,
    pulumi.Output<bool>? disableDockerDaemonCheck,
    pulumi.Output<String>? host,
    pulumi.Output<String>? keyMaterial,
    pulumi.Output<List<ProviderRegistryAuth>>? registryAuth,
    pulumi.Output<List<String>>? sshOpts,
  }) :
      caMaterial = pulumi.Input.asOptionalInput<String>(caMaterial),
      certMaterial = pulumi.Input.asOptionalInput<String>(certMaterial),
      certPath = pulumi.Input.asOptionalInput<String>(certPath),
      context = pulumi.Input.asOptionalInput<String>(context),
      disableDockerDaemonCheck = pulumi.Input.asOptionalInput<bool>(disableDockerDaemonCheck),
      host = pulumi.Input.asOptionalInput<String>(host),
      keyMaterial = pulumi.Input.asOptionalInput<String>(keyMaterial),
      registryAuth = pulumi.Input.asOptionalInput<List<ProviderRegistryAuth>>(registryAuth),
      sshOpts = pulumi.Input.asOptionalInput<List<String>>(sshOpts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caMaterial': ?caMaterial,
      'certMaterial': ?certMaterial,
      'certPath': ?certPath,
      'context': ?context,
      'disableDockerDaemonCheck': ?disableDockerDaemonCheck,
      'host': ?host,
      'keyMaterial': ?keyMaterial,
      'registryAuth': ?pulumi.Input.mapOptionalInputValue<List<ProviderRegistryAuth>, List<Map<String, dynamic>>>(registryAuth, (value) => pulumi.Input.encodeList<ProviderRegistryAuth, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sshOpts': ?sshOpts,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      caMaterial: map['caMaterial'] == null ? null : pulumi.Output.create<String>(map['caMaterial'] as String),
      certMaterial: map['certMaterial'] == null ? null : pulumi.Output.create<String>(map['certMaterial'] as String),
      certPath: map['certPath'] == null ? null : pulumi.Output.create<String>(map['certPath'] as String),
      context: map['context'] == null ? null : pulumi.Output.create<String>(map['context'] as String),
      disableDockerDaemonCheck: map['disableDockerDaemonCheck'] == null ? null : pulumi.Output.create<bool>(map['disableDockerDaemonCheck'] as bool),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      keyMaterial: map['keyMaterial'] == null ? null : pulumi.Output.create<String>(map['keyMaterial'] as String),
      registryAuth: map['registryAuth'] == null ? null : pulumi.Output.create<List<ProviderRegistryAuth>>(pulumi.Input.decodeList<ProviderRegistryAuth>(map['registryAuth'], (value) => ProviderRegistryAuth.fromMap((value as Map).cast<String, dynamic>()))),
      sshOpts: map['sshOpts'] == null ? null : pulumi.Output.create<List<String>>((map['sshOpts'] as List).cast<String>()),
    );
  }
}

