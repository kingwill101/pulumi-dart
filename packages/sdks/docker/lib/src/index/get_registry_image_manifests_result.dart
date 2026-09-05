// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_image_manifests_auth_config.dart';
import 'get_registry_image_manifests_manifest.dart';

/// Result data returned by getRegistryImageManifests.
class GetRegistryImageManifestsResult {
  /// Authentication configuration for the Docker registry. It is only used for this resource.
  final GetRegistryImageManifestsAuthConfig? authConfig;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  final bool? insecureSkipVerify;
  /// The metadata for each manifest in the image
  final List<GetRegistryImageManifestsManifest>? manifests;
  /// The name of the Docker image, including any tags. e.g. `alpine:latest`
  final String? name;

  /// Creates a new [GetRegistryImageManifestsResult].
  /// [authConfig] Authentication configuration for the Docker registry. It is only used for this resource.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [insecureSkipVerify] If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  /// [manifests] The metadata for each manifest in the image
  /// [name] The name of the Docker image, including any tags. e.g. `alpine:latest`
  const GetRegistryImageManifestsResult({
    this.authConfig,
    this.id,
    this.insecureSkipVerify,
    this.manifests,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?authConfig?.toMap(),
      'id': ?id,
      'insecureSkipVerify': ?insecureSkipVerify,
      'manifests': ?(() { final guardedValue = manifests; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegistryImageManifestsManifest, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
    };
  }

  factory GetRegistryImageManifestsResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryImageManifestsResult(
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return GetRegistryImageManifestsAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      insecureSkipVerify: (() { final guardedValue = map['insecureSkipVerify']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      manifests: (() { final guardedValue = map['manifests']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegistryImageManifestsManifest>(guardedValue, (value) => GetRegistryImageManifestsManifest.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
