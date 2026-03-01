// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_cluster_response_gkehub_v1beta1.dart';
import 'edge_cluster_response_gkehub_v1beta1.dart';
import 'gke_cluster_response_gkehub_v1beta1.dart';
import 'kubernetes_metadata_response_gkehub_v1beta1.dart';
import 'kubernetes_resource_response_gkehub_v1beta1.dart';
import 'multi_cloud_cluster_response_gkehub_v1beta1.dart';
import 'on_prem_cluster_response_gkehub_v1beta1.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpointResponseGkehubV1beta1 {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final ApplianceClusterResponseGkehubV1beta1 applianceCluster;
  /// Optional. Specific information for a Google Edge cluster.
  final EdgeClusterResponseGkehubV1beta1 edgeCluster;
  /// Optional. Specific information for a GKE-on-GCP cluster.
  final GkeClusterResponseGkehubV1beta1 gkeCluster;
  /// Useful Kubernetes-specific metadata.
  final KubernetesMetadataResponseGkehubV1beta1 kubernetesMetadata;
  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final KubernetesResourceResponseGkehubV1beta1 kubernetesResource;
  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final MultiCloudClusterResponseGkehubV1beta1 multiCloudCluster;
  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final OnPremClusterResponseGkehubV1beta1 onPremCluster;

  /// Creates a new [MembershipEndpointResponseGkehubV1beta1].
  /// [applianceCluster] Optional. Specific information for a GDC Edge Appliance cluster.
  /// [edgeCluster] Optional. Specific information for a Google Edge cluster.
  /// [gkeCluster] Optional. Specific information for a GKE-on-GCP cluster.
  /// [kubernetesMetadata] Useful Kubernetes-specific metadata.
  /// [kubernetesResource] Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  /// [multiCloudCluster] Optional. Specific information for a GKE Multi-Cloud cluster.
  /// [onPremCluster] Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  MembershipEndpointResponseGkehubV1beta1({
    required this.applianceCluster,
    required this.edgeCluster,
    required this.gkeCluster,
    required this.kubernetesMetadata,
    required this.kubernetesResource,
    required this.multiCloudCluster,
    required this.onPremCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceCluster': applianceCluster.toMap(),
      'edgeCluster': edgeCluster.toMap(),
      'gkeCluster': gkeCluster.toMap(),
      'kubernetesMetadata': kubernetesMetadata.toMap(),
      'kubernetesResource': kubernetesResource.toMap(),
      'multiCloudCluster': multiCloudCluster.toMap(),
      'onPremCluster': onPremCluster.toMap(),
    };
  }

  factory MembershipEndpointResponseGkehubV1beta1.fromMap(Map<String, dynamic> map) {
    return MembershipEndpointResponseGkehubV1beta1(
      applianceCluster: ApplianceClusterResponseGkehubV1beta1.fromMap((map['applianceCluster'] as Map).cast<String, dynamic>()),
      edgeCluster: EdgeClusterResponseGkehubV1beta1.fromMap((map['edgeCluster'] as Map).cast<String, dynamic>()),
      gkeCluster: GkeClusterResponseGkehubV1beta1.fromMap((map['gkeCluster'] as Map).cast<String, dynamic>()),
      kubernetesMetadata: KubernetesMetadataResponseGkehubV1beta1.fromMap((map['kubernetesMetadata'] as Map).cast<String, dynamic>()),
      kubernetesResource: KubernetesResourceResponseGkehubV1beta1.fromMap((map['kubernetesResource'] as Map).cast<String, dynamic>()),
      multiCloudCluster: MultiCloudClusterResponseGkehubV1beta1.fromMap((map['multiCloudCluster'] as Map).cast<String, dynamic>()),
      onPremCluster: OnPremClusterResponseGkehubV1beta1.fromMap((map['onPremCluster'] as Map).cast<String, dynamic>()),
    );
  }
}

