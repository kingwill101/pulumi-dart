// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_cluster_gkehub_v1beta.dart';
import 'edge_cluster_gkehub_v1beta.dart';
import 'gke_cluster_gkehub_v1beta.dart';
import 'kubernetes_resource_gkehub_v1beta.dart';
import 'multi_cloud_cluster_gkehub_v1beta.dart';
import 'on_prem_cluster_gkehub_v1beta.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpointGkehubV1beta {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final ApplianceClusterGkehubV1beta? applianceCluster;
  /// Optional. Specific information for a Google Edge cluster.
  final EdgeClusterGkehubV1beta? edgeCluster;
  /// Optional. Specific information for a GKE-on-GCP cluster.
  final GkeClusterGkehubV1beta? gkeCluster;
  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final KubernetesResourceGkehubV1beta? kubernetesResource;
  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final MultiCloudClusterGkehubV1beta? multiCloudCluster;
  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final OnPremClusterGkehubV1beta? onPremCluster;

  /// Creates a new [MembershipEndpointGkehubV1beta].
  /// [applianceCluster] Optional. Specific information for a GDC Edge Appliance cluster.
  /// [edgeCluster] Optional. Specific information for a Google Edge cluster.
  /// [gkeCluster] Optional. Specific information for a GKE-on-GCP cluster.
  /// [kubernetesResource] Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  /// [multiCloudCluster] Optional. Specific information for a GKE Multi-Cloud cluster.
  /// [onPremCluster] Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  MembershipEndpointGkehubV1beta({
    this.applianceCluster,
    this.edgeCluster,
    this.gkeCluster,
    this.kubernetesResource,
    this.multiCloudCluster,
    this.onPremCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceCluster': ?applianceCluster == null ? null : applianceCluster!.toMap(),
      'edgeCluster': ?edgeCluster == null ? null : edgeCluster!.toMap(),
      'gkeCluster': ?gkeCluster == null ? null : gkeCluster!.toMap(),
      'kubernetesResource': ?kubernetesResource == null ? null : kubernetesResource!.toMap(),
      'multiCloudCluster': ?multiCloudCluster == null ? null : multiCloudCluster!.toMap(),
      'onPremCluster': ?onPremCluster == null ? null : onPremCluster!.toMap(),
    };
  }

  factory MembershipEndpointGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return MembershipEndpointGkehubV1beta(
      applianceCluster: map['applianceCluster'] == null ? null : ApplianceClusterGkehubV1beta.fromMap((map['applianceCluster'] as Map).cast<String, dynamic>()),
      edgeCluster: map['edgeCluster'] == null ? null : EdgeClusterGkehubV1beta.fromMap((map['edgeCluster'] as Map).cast<String, dynamic>()),
      gkeCluster: map['gkeCluster'] == null ? null : GkeClusterGkehubV1beta.fromMap((map['gkeCluster'] as Map).cast<String, dynamic>()),
      kubernetesResource: map['kubernetesResource'] == null ? null : KubernetesResourceGkehubV1beta.fromMap((map['kubernetesResource'] as Map).cast<String, dynamic>()),
      multiCloudCluster: map['multiCloudCluster'] == null ? null : MultiCloudClusterGkehubV1beta.fromMap((map['multiCloudCluster'] as Map).cast<String, dynamic>()),
      onPremCluster: map['onPremCluster'] == null ? null : OnPremClusterGkehubV1beta.fromMap((map['onPremCluster'] as Map).cast<String, dynamic>()),
    );
  }
}

