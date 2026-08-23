// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KubernetesMetadata provides informational metadata for Memberships representing Kubernetes clusters.
class KubernetesMetadataResponseGkehubV1alpha {
  /// Kubernetes API server version string as reported by `/version`.
  final pulumi.Input<String> kubernetesApiServerVersion;
  /// The total memory capacity as reported by the sum of all Kubernetes nodes resources, defined in MB.
  final pulumi.Input<int> memoryMb;
  /// Node count as reported by Kubernetes nodes resources.
  final pulumi.Input<int> nodeCount;
  /// Node providerID as reported by the first node in the list of nodes on the Kubernetes endpoint. On Kubernetes platforms that support zero-node clusters (like GKE-on-GCP), the node_count will be zero and the node_provider_id will be empty.
  final pulumi.Input<String> nodeProviderId;
  /// The time at which these details were last updated. This update_time is different from the Membership-level update_time since EndpointDetails are updated internally for API consumers.
  final pulumi.Input<String> updateTime;
  /// vCPU count as reported by Kubernetes nodes resources.
  final pulumi.Input<int> vcpuCount;

  /// Creates a new [KubernetesMetadataResponseGkehubV1alpha].
  /// [kubernetesApiServerVersion] Kubernetes API server version string as reported by `/version`.
  /// [memoryMb] The total memory capacity as reported by the sum of all Kubernetes nodes resources, defined in MB.
  /// [nodeCount] Node count as reported by Kubernetes nodes resources.
  /// [nodeProviderId] Node providerID as reported by the first node in the list of nodes on the Kubernetes endpoint. On Kubernetes platforms that support zero-node clusters (like GKE-on-GCP), the node_count will be zero and the node_provider_id will be empty.
  /// [updateTime] The time at which these details were last updated. This update_time is different from the Membership-level update_time since EndpointDetails are updated internally for API consumers.
  /// [vcpuCount] vCPU count as reported by Kubernetes nodes resources.
  const KubernetesMetadataResponseGkehubV1alpha({
    required this.kubernetesApiServerVersion,
    required this.memoryMb,
    required this.nodeCount,
    required this.nodeProviderId,
    required this.updateTime,
    required this.vcpuCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesApiServerVersion': kubernetesApiServerVersion,
      'memoryMb': memoryMb,
      'nodeCount': nodeCount,
      'nodeProviderId': nodeProviderId,
      'updateTime': updateTime,
      'vcpuCount': vcpuCount,
    };
  }

  factory KubernetesMetadataResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return KubernetesMetadataResponseGkehubV1alpha(
      kubernetesApiServerVersion: pulumi.Input.fromValue(map['kubernetesApiServerVersion'] as String),
      memoryMb: pulumi.Input.fromValue(map['memoryMb'] as int),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      nodeProviderId: pulumi.Input.fromValue(map['nodeProviderId'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
      vcpuCount: pulumi.Input.fromValue(map['vcpuCount'] as int),
    );
  }
}
