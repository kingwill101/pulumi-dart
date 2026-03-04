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
    this.caMaterial,
    this.certMaterial,
    this.certPath,
    this.context,
    this.disableDockerDaemonCheck,
    this.host,
    this.keyMaterial,
    this.registryAuth,
    this.sshOpts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caMaterial': ?caMaterial,
      'certMaterial': ?certMaterial,
      'certPath': ?certPath,
      'context': ?context,
      'disableDockerDaemonCheck': ?disableDockerDaemonCheck,
      'host': ?host,
      'keyMaterial': ?keyMaterial,
      'registryAuth':
          ?pulumi.Input.mapOptionalInputValue<
            List<ProviderRegistryAuth>,
            List<Map<String, dynamic>>
          >(
            registryAuth,
            (value) =>
                pulumi.Input.encodeList<
                  ProviderRegistryAuth,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sshOpts': ?sshOpts,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      caMaterial: (() {
        final guardedValue = map['caMaterial'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certMaterial: (() {
        final guardedValue = map['certMaterial'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certPath: (() {
        final guardedValue = map['certPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      context: (() {
        final guardedValue = map['context'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableDockerDaemonCheck: (() {
        final guardedValue = map['disableDockerDaemonCheck'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyMaterial: (() {
        final guardedValue = map['keyMaterial'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registryAuth: (() {
        final guardedValue = map['registryAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ProviderRegistryAuth>(
            guardedValue,
            (value) => ProviderRegistryAuth.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sshOpts: (() {
        final guardedValue = map['sshOpts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
