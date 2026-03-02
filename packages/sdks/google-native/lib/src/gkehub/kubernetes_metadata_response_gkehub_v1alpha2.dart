// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KubernetesMetadata provides informational metadata for Memberships that are created from Kubernetes Endpoints (currently, these are equivalent to Kubernetes clusters).
class KubernetesMetadataResponseGkehubV1alpha2 {
  /// Kubernetes API server version string as reported by '/version'.
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

  /// Creates a new [KubernetesMetadataResponseGkehubV1alpha2].
  /// [kubernetesApiServerVersion] Kubernetes API server version string as reported by '/version'.
  /// [memoryMb] The total memory capacity as reported by the sum of all Kubernetes nodes resources, defined in MB.
  /// [nodeCount] Node count as reported by Kubernetes nodes resources.
  /// [nodeProviderId] Node providerID as reported by the first node in the list of nodes on the Kubernetes endpoint. On Kubernetes platforms that support zero-node clusters (like GKE-on-GCP), the node_count will be zero and the node_provider_id will be empty.
  /// [updateTime] The time at which these details were last updated. This update_time is different from the Membership-level update_time since EndpointDetails are updated internally for API consumers.
  /// [vcpuCount] vCPU count as reported by Kubernetes nodes resources.
  KubernetesMetadataResponseGkehubV1alpha2({
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

  factory KubernetesMetadataResponseGkehubV1alpha2.fromMap(Map<String, dynamic> map) {
    return KubernetesMetadataResponseGkehubV1alpha2(
      kubernetesApiServerVersion: (map['kubernetesApiServerVersion'] as String).input(),
      memoryMb: (map['memoryMb'] as int).input(),
      nodeCount: (map['nodeCount'] as int).input(),
      nodeProviderId: (map['nodeProviderId'] as String).input(),
      updateTime: (map['updateTime'] as String).input(),
      vcpuCount: (map['vcpuCount'] as int).input(),
    );
  }
}

