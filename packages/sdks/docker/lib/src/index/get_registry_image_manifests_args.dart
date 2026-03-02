// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_image_manifests_auth_config.dart';

/// {@template pulumi_index_get_registry_image_manifests_get_registry_image_manifests_args_doc}
/// Arguments for getRegistryImageManifests.
/// {@endtemplate}
/// {@macro pulumi_index_get_registry_image_manifests_get_registry_image_manifests_args_doc}
class GetRegistryImageManifestsArgs {
  /// Authentication configuration for the Docker registry. It is only used for this resource.
  final pulumi.Input<GetRegistryImageManifestsAuthConfig>? authConfig;
  /// If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  final pulumi.Input<bool>? insecureSkipVerify;
  /// The name of the Docker image, including any tags. e.g. `alpine:latest`
  final pulumi.Input<String> name;

  /// Creates a new [GetRegistryImageManifestsArgs].
  /// [authConfig] Authentication configuration for the Docker registry. It is only used for this resource.
  /// [insecureSkipVerify] If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  /// [name] The name of the Docker image, including any tags. e.g. `alpine:latest`
  GetRegistryImageManifestsArgs({
    this.authConfig,
    this.insecureSkipVerify,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?pulumi.Input.mapOptionalInputValue<GetRegistryImageManifestsAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'insecureSkipVerify': ?insecureSkipVerify,
      'name': name,
    };
  }

  factory GetRegistryImageManifestsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageManifestsArgs(
      authConfig: map['authConfig'] == null ? null : (GetRegistryImageManifestsAuthConfig.fromMap((map['authConfig']! as Map).cast<String, dynamic>())).input(),
      insecureSkipVerify: map['insecureSkipVerify'] == null ? null : (map['insecureSkipVerify']! as bool).input(),
      name: (map['name'] as String).input(),
    );
  }
}

