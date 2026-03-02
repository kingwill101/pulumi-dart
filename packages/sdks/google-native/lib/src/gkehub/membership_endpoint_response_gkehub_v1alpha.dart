// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_cluster_response_gkehub_v1alpha.dart';
import 'edge_cluster_response_gkehub_v1alpha.dart';
import 'gke_cluster_response_gkehub_v1alpha.dart';
import 'kubernetes_metadata_response_gkehub_v1alpha.dart';
import 'kubernetes_resource_response_gkehub_v1alpha.dart';
import 'multi_cloud_cluster_response_gkehub_v1alpha.dart';
import 'on_prem_cluster_response_gkehub_v1alpha.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpointResponseGkehubV1alpha {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final pulumi.Input<ApplianceClusterResponseGkehubV1alpha> applianceCluster;
  /// Optional. Specific information for a Google Edge cluster.
  final pulumi.Input<EdgeClusterResponseGkehubV1alpha> edgeCluster;
  /// Optional. Specific information for a GKE-on-GCP cluster.
  final pulumi.Input<GkeClusterResponseGkehubV1alpha> gkeCluster;
  /// Whether the lifecycle of this membership is managed by a google cluster platform service.
  final pulumi.Input<bool> googleManaged;
  /// Useful Kubernetes-specific metadata.
  final pulumi.Input<KubernetesMetadataResponseGkehubV1alpha> kubernetesMetadata;
  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final pulumi.Input<KubernetesResourceResponseGkehubV1alpha> kubernetesResource;
  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final pulumi.Input<MultiCloudClusterResponseGkehubV1alpha> multiCloudCluster;
  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final pulumi.Input<OnPremClusterResponseGkehubV1alpha> onPremCluster;

  /// Creates a new [MembershipEndpointResponseGkehubV1alpha].
  /// [applianceCluster] Optional. Specific information for a GDC Edge Appliance cluster.
  /// [edgeCluster] Optional. Specific information for a Google Edge cluster.
  /// [gkeCluster] Optional. Specific information for a GKE-on-GCP cluster.
  /// [googleManaged] Whether the lifecycle of this membership is managed by a google cluster platform service.
  /// [kubernetesMetadata] Useful Kubernetes-specific metadata.
  /// [kubernetesResource] Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  /// [multiCloudCluster] Optional. Specific information for a GKE Multi-Cloud cluster.
  /// [onPremCluster] Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  MembershipEndpointResponseGkehubV1alpha({
    required this.applianceCluster,
    required this.edgeCluster,
    required this.gkeCluster,
    required this.googleManaged,
    required this.kubernetesMetadata,
    required this.kubernetesResource,
    required this.multiCloudCluster,
    required this.onPremCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceCluster': pulumi.Input.mapInputValue<ApplianceClusterResponseGkehubV1alpha, Map<String, dynamic>>(applianceCluster, (value) => value.toMap()),
      'edgeCluster': pulumi.Input.mapInputValue<EdgeClusterResponseGkehubV1alpha, Map<String, dynamic>>(edgeCluster, (value) => value.toMap()),
      'gkeCluster': pulumi.Input.mapInputValue<GkeClusterResponseGkehubV1alpha, Map<String, dynamic>>(gkeCluster, (value) => value.toMap()),
      'googleManaged': googleManaged,
      'kubernetesMetadata': pulumi.Input.mapInputValue<KubernetesMetadataResponseGkehubV1alpha, Map<String, dynamic>>(kubernetesMetadata, (value) => value.toMap()),
      'kubernetesResource': pulumi.Input.mapInputValue<KubernetesResourceResponseGkehubV1alpha, Map<String, dynamic>>(kubernetesResource, (value) => value.toMap()),
      'multiCloudCluster': pulumi.Input.mapInputValue<MultiCloudClusterResponseGkehubV1alpha, Map<String, dynamic>>(multiCloudCluster, (value) => value.toMap()),
      'onPremCluster': pulumi.Input.mapInputValue<OnPremClusterResponseGkehubV1alpha, Map<String, dynamic>>(onPremCluster, (value) => value.toMap()),
    };
  }

  factory MembershipEndpointResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return MembershipEndpointResponseGkehubV1alpha(
      applianceCluster: (ApplianceClusterResponseGkehubV1alpha.fromMap((map['applianceCluster'] as Map).cast<String, dynamic>())).input(),
      edgeCluster: (EdgeClusterResponseGkehubV1alpha.fromMap((map['edgeCluster'] as Map).cast<String, dynamic>())).input(),
      gkeCluster: (GkeClusterResponseGkehubV1alpha.fromMap((map['gkeCluster'] as Map).cast<String, dynamic>())).input(),
      googleManaged: (map['googleManaged'] as bool).input(),
      kubernetesMetadata: (KubernetesMetadataResponseGkehubV1alpha.fromMap((map['kubernetesMetadata'] as Map).cast<String, dynamic>())).input(),
      kubernetesResource: (KubernetesResourceResponseGkehubV1alpha.fromMap((map['kubernetesResource'] as Map).cast<String, dynamic>())).input(),
      multiCloudCluster: (MultiCloudClusterResponseGkehubV1alpha.fromMap((map['multiCloudCluster'] as Map).cast<String, dynamic>())).input(),
      onPremCluster: (OnPremClusterResponseGkehubV1alpha.fromMap((map['onPremCluster'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

