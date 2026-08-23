// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_image_auth_config.dart';
import 'registry_image_build.dart';

/// Input properties used for looking up and filtering RegistryImage resources.
class RegistryImageState {
  /// Authentication configuration for the Docker registry. It is only used for this resource.
  final pulumi.Input<RegistryImageAuthConfig>? authConfig;
  /// Configuration to build an image. Requires the `Use containerd for pulling and storing images` option to be disabled in the Docker Host(https://github.com/kreuzwerker/terraform-provider-docker/issues/534). Please see [docker build command reference](https://docs.docker.com/engine/reference/commandline/build/#options) too.
  final pulumi.Input<RegistryImageBuild>? build;
  /// If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  final pulumi.Input<bool>? insecureSkipVerify;
  /// If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker registry on destroy operation. Defaults to `false`
  final pulumi.Input<bool>? keepRemotely;
  /// The name of the Docker image.
  final pulumi.Input<String>? name;
  /// The sha256 digest of the image.
  final pulumi.Input<String>? sha256Digest;
  /// A map of arbitrary strings that, when changed, will force the `docker.RegistryImage` resource to be replaced. This can be used to repush a local image
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [RegistryImageState].
  /// [authConfig] Authentication configuration for the Docker registry. It is only used for this resource.
  /// [build] Configuration to build an image. Requires the `Use containerd for pulling and storing images` option to be disabled in the Docker Host(https://github.com/kreuzwerker/terraform-provider-docker/issues/534). Please see [docker build command reference](https://docs.docker.com/engine/reference/commandline/build/#options) too.
  /// [insecureSkipVerify] If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  /// [keepRemotely] If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker registry on destroy operation. Defaults to `false`
  /// [name] The name of the Docker image.
  /// [sha256Digest] The sha256 digest of the image.
  /// [triggers] A map of arbitrary strings that, when changed, will force the `docker.RegistryImage` resource to be replaced. This can be used to repush a local image
  const RegistryImageState({
    this.authConfig,
    this.build,
    this.insecureSkipVerify,
    this.keepRemotely,
    this.name,
    this.sha256Digest,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?pulumi.Input.mapOptionalInputValue<RegistryImageAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'build': ?pulumi.Input.mapOptionalInputValue<RegistryImageBuild, Map<String, dynamic>>(build, (value) => value.toMap()),
      'insecureSkipVerify': ?insecureSkipVerify,
      'keepRemotely': ?keepRemotely,
      'name': ?name,
      'sha256Digest': ?sha256Digest,
      'triggers': ?triggers,
    };
  }

  factory RegistryImageState.fromMap(Map<String, dynamic> map) {
    return RegistryImageState(
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryImageAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryImageBuild.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      insecureSkipVerify: (() { final guardedValue = map['insecureSkipVerify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keepRemotely: (() { final guardedValue = map['keepRemotely']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha256Digest: (() { final guardedValue = map['sha256Digest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
