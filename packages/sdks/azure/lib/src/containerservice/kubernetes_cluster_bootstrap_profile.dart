// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterBootstrapProfile {
  /// The artifact source. The source where the artifacts are downloaded from. Possible values are `Cache` and `Direct`. Defaults to `Direct`.
  ///
  /// &gt; **Note:** If the `artifact_source` is set to `Cache` and the `outbound_type` has been specified, the managed ACR and related resources will **not** be automatically deleted and must be removed manually. Please see the product [documentation](https://learn.microsoft.com/azure/aks/concepts-network-isolated#how-a-network-isolated-cluster-works) for more information.
  final pulumi.Input<String>? artifactSource;
  /// The resource Id of Azure Container Registry.
  ///
  /// &gt; **Note:** The `container_registry_id` requires an ACR with a private link to the cluster. You must manage permissions, cache rules, the associated private link and the private endpoint. Please see the product [documentation](https://learn.microsoft.com/azure/container-registry/container-registry-private-link) for more information on configuring an ACR with a private endpoint.
  final pulumi.Input<String>? containerRegistryId;

  /// Creates a new [KubernetesClusterBootstrapProfile].
  /// [artifactSource] The artifact source. The source where the artifacts are downloaded from. Possible values are `Cache` and `Direct`. Defaults to `Direct`.
  /// [containerRegistryId] The resource Id of Azure Container Registry.
  const KubernetesClusterBootstrapProfile({
    this.artifactSource,
    this.containerRegistryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactSource': ?artifactSource,
      'containerRegistryId': ?containerRegistryId,
    };
  }

  factory KubernetesClusterBootstrapProfile.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterBootstrapProfile(
      artifactSource: (() { final guardedValue = map['artifactSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerRegistryId: (() { final guardedValue = map['containerRegistryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

