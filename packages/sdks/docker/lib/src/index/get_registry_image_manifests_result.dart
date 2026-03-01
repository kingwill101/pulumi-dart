// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_image_manifests_auth_config.dart';
import 'get_registry_image_manifests_manifest.dart';

/// Result data returned by getRegistryImageManifests.
class GetRegistryImageManifestsResult {
  /// Authentication configuration for the Docker registry. It is only used for this resource.
  final GetRegistryImageManifestsAuthConfig? authConfig;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  final bool? insecureSkipVerify;
  /// The metadata for each manifest in the image
  final List<GetRegistryImageManifestsManifest> manifests;
  /// The name of the Docker image, including any tags. e.g. `alpine:latest`
  final String name;

  /// Creates a new [GetRegistryImageManifestsResult].
  /// [authConfig] Authentication configuration for the Docker registry. It is only used for this resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [insecureSkipVerify] If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  /// [manifests] The metadata for each manifest in the image
  /// [name] The name of the Docker image, including any tags. e.g. `alpine:latest`
  GetRegistryImageManifestsResult({
    this.authConfig,
    required this.id,
    this.insecureSkipVerify,
    required this.manifests,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?authConfig == null ? null : authConfig!.toMap(),
      'id': id,
      'insecureSkipVerify': ?insecureSkipVerify,
      'manifests': pulumi.Input.encodeList<GetRegistryImageManifestsManifest, Map<String, dynamic>>(manifests, (value) => value.toMap()),
      'name': name,
    };
  }

  factory GetRegistryImageManifestsResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageManifestsResult(
      authConfig: map['authConfig'] == null ? null : GetRegistryImageManifestsAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      insecureSkipVerify: map['insecureSkipVerify'] == null ? null : map['insecureSkipVerify'] as bool,
      manifests: pulumi.Input.decodeList<GetRegistryImageManifestsManifest>(map['manifests'], (value) => GetRegistryImageManifestsManifest.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}

