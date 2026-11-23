// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiModelDevelopmentClusterOrchestratorSpecKubernetesSpec {
  /// The Kubernetes version of the GKE control plane.
  /// Accepted formats are minor version (for example, '"1.30"'), patch version
  /// (for example, '"1.30.5"'), full GKE release version (for example,
  /// '"1.30.5-gke.1014001"'), or '"-"' to use the service default version.
  /// Upgrades can advance at most one minor version at a time; downgrades are
  /// rejected.
  final pulumi.Input<String?>? controlPlaneVersion;
  /// Whether to enable IP alias.
  final pulumi.Input<bool?>? enableIpAlias;
  /// IDs of the NodePools to be included in this GKE cluster. These IDs must
  /// correspond to NodePools defined in the 'node_pools' field.
  final pulumi.Input<List<String>?>? nodePoolIds;
  /// The Kubernetes versions for specific node pools, keyed by node pool ID.
  /// When specified, all node pool IDs in the cluster must be included.
  /// Accepted formats are minor version (for example, '"1.30"'), patch version
  /// (for example, '"1.30.5"'), full GKE release version (for example,
  /// '"1.30.5-gke.1014001"'), or '"-"' to align with the control plane version.
  /// Node pools cannot be newer than the control plane or more than 2 minor
  /// versions behind it; upgrades can advance at most one minor version at a
  /// time and downgrades are rejected.
  final pulumi.Input<Map<String, String>?>? nodePoolVersions;
  /// Whether the GKE cluster's control plane endpoint is publicly accessible.
  /// If true, the cluster is created with a public access endpoint (i.e. the
  /// private cluster configuration is disabled). If false or unset, the cluster
  /// is created with only private control plane access by default.
  final pulumi.Input<bool?>? publicAccessEndpointEnabled;

  /// Creates a new [AiModelDevelopmentClusterOrchestratorSpecKubernetesSpec].
  /// [controlPlaneVersion] The Kubernetes version of the GKE control plane.
  /// [enableIpAlias] Whether to enable IP alias.
  /// [nodePoolIds] IDs of the NodePools to be included in this GKE cluster. These IDs must
  /// [nodePoolVersions] The Kubernetes versions for specific node pools, keyed by node pool ID.
  /// [publicAccessEndpointEnabled] Whether the GKE cluster's control plane endpoint is publicly accessible.
  const AiModelDevelopmentClusterOrchestratorSpecKubernetesSpec({
    this.controlPlaneVersion,
    this.enableIpAlias,
    this.nodePoolIds,
    this.nodePoolVersions,
    this.publicAccessEndpointEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneVersion': ?controlPlaneVersion,
      'enableIpAlias': ?enableIpAlias,
      'nodePoolIds': ?nodePoolIds,
      'nodePoolVersions': ?nodePoolVersions,
      'publicAccessEndpointEnabled': ?publicAccessEndpointEnabled,
    };
  }

  factory AiModelDevelopmentClusterOrchestratorSpecKubernetesSpec.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterOrchestratorSpecKubernetesSpec(
      controlPlaneVersion: (() { final guardedValue = map['controlPlaneVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableIpAlias: (() { final guardedValue = map['enableIpAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nodePoolIds: (() { final guardedValue = map['nodePoolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodePoolVersions: (() { final guardedValue = map['nodePoolVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      publicAccessEndpointEnabled: (() { final guardedValue = map['publicAccessEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
