// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceManifest represents a single Kubernetes resource to be applied to the cluster.
class ResourceManifestResponseGkehubV1alpha {
  /// Whether the resource provided in the manifest is `cluster_scoped`. If unset, the manifest is assumed to be namespace scoped. This field is used for REST mapping when applying the resource in a cluster.
  final pulumi.Input<bool> clusterScoped;
  /// YAML manifest of the resource.
  final pulumi.Input<String> manifest;

  /// Creates a new [ResourceManifestResponseGkehubV1alpha].
  /// [clusterScoped] Whether the resource provided in the manifest is `cluster_scoped`. If unset, the manifest is assumed to be namespace scoped. This field is used for REST mapping when applying the resource in a cluster.
  /// [manifest] YAML manifest of the resource.
  ResourceManifestResponseGkehubV1alpha({
    required this.clusterScoped,
    required this.manifest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterScoped': clusterScoped,
      'manifest': manifest,
    };
  }

  factory ResourceManifestResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return ResourceManifestResponseGkehubV1alpha(
      clusterScoped: (map['clusterScoped'] as bool).input(),
      manifest: (map['manifest'] as String).input(),
    );
  }
}

