// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_image_auth_config.dart';
import 'registry_image_build.dart';

/// Input properties used for looking up and filtering RegistryImage resources.
class RegistryImageState {
  /// Authentication configuration for the Docker registry. It is only used for this resource.
  final pulumi.Input<RegistryImageAuthConfig>? authConfig;
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
  /// [build] Optional.
  /// [insecureSkipVerify] If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  /// [keepRemotely] If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker registry on destroy operation. Defaults to `false`
  /// [name] The name of the Docker image.
  /// [sha256Digest] The sha256 digest of the image.
  /// [triggers] A map of arbitrary strings that, when changed, will force the `docker.RegistryImage` resource to be replaced. This can be used to repush a local image
  RegistryImageState({
    pulumi.Output<RegistryImageAuthConfig>? authConfig,
    pulumi.Output<RegistryImageBuild>? build,
    pulumi.Output<bool>? insecureSkipVerify,
    pulumi.Output<bool>? keepRemotely,
    pulumi.Output<String>? name,
    pulumi.Output<String>? sha256Digest,
    pulumi.Output<Map<String, String>>? triggers,
  }) :
      authConfig = pulumi.Input.asOptionalInput<RegistryImageAuthConfig>(authConfig),
      build = pulumi.Input.asOptionalInput<RegistryImageBuild>(build),
      insecureSkipVerify = pulumi.Input.asOptionalInput<bool>(insecureSkipVerify),
      keepRemotely = pulumi.Input.asOptionalInput<bool>(keepRemotely),
      name = pulumi.Input.asOptionalInput<String>(name),
      sha256Digest = pulumi.Input.asOptionalInput<String>(sha256Digest),
      triggers = pulumi.Input.asOptionalInput<Map<String, String>>(triggers);

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
      authConfig: map['authConfig'] == null ? null : pulumi.Output.create<RegistryImageAuthConfig>(RegistryImageAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>())),
      build: map['build'] == null ? null : pulumi.Output.create<RegistryImageBuild>(RegistryImageBuild.fromMap((map['build'] as Map).cast<String, dynamic>())),
      insecureSkipVerify: map['insecureSkipVerify'] == null ? null : pulumi.Output.create<bool>(map['insecureSkipVerify'] as bool),
      keepRemotely: map['keepRemotely'] == null ? null : pulumi.Output.create<bool>(map['keepRemotely'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sha256Digest: map['sha256Digest'] == null ? null : pulumi.Output.create<String>(map['sha256Digest'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<Map<String, String>>((map['triggers'] as Map).cast<String, String>()),
    );
  }
}

