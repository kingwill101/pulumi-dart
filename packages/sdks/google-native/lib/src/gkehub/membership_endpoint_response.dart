// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_cluster_response.dart';
import 'edge_cluster_response.dart';
import 'gke_cluster_response.dart';
import 'kubernetes_metadata_response.dart';
import 'kubernetes_resource_response.dart';
import 'multi_cloud_cluster_response.dart';
import 'on_prem_cluster_response.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpointResponse {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final pulumi.Input<ApplianceClusterResponse> applianceCluster;
  /// Optional. Specific information for a Google Edge cluster.
  final pulumi.Input<EdgeClusterResponse> edgeCluster;
  /// Optional. Specific information for a GKE-on-GCP cluster.
  final pulumi.Input<GkeClusterResponse> gkeCluster;
  /// Whether the lifecycle of this membership is managed by a google cluster platform service.
  final pulumi.Input<bool> googleManaged;
  /// Useful Kubernetes-specific metadata.
  final pulumi.Input<KubernetesMetadataResponse> kubernetesMetadata;
  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final pulumi.Input<KubernetesResourceResponse> kubernetesResource;
  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final pulumi.Input<MultiCloudClusterResponse> multiCloudCluster;
  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final pulumi.Input<OnPremClusterResponse> onPremCluster;

  /// Creates a new [MembershipEndpointResponse].
  /// [applianceCluster] Optional. Specific information for a GDC Edge Appliance cluster.
  /// [edgeCluster] Optional. Specific information for a Google Edge cluster.
  /// [gkeCluster] Optional. Specific information for a GKE-on-GCP cluster.
  /// [googleManaged] Whether the lifecycle of this membership is managed by a google cluster platform service.
  /// [kubernetesMetadata] Useful Kubernetes-specific metadata.
  /// [kubernetesResource] Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  /// [multiCloudCluster] Optional. Specific information for a GKE Multi-Cloud cluster.
  /// [onPremCluster] Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  MembershipEndpointResponse({
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
      'applianceCluster': pulumi.Input.mapInputValue<ApplianceClusterResponse, Map<String, dynamic>>(applianceCluster, (value) => value.toMap()),
      'edgeCluster': pulumi.Input.mapInputValue<EdgeClusterResponse, Map<String, dynamic>>(edgeCluster, (value) => value.toMap()),
      'gkeCluster': pulumi.Input.mapInputValue<GkeClusterResponse, Map<String, dynamic>>(gkeCluster, (value) => value.toMap()),
      'googleManaged': googleManaged,
      'kubernetesMetadata': pulumi.Input.mapInputValue<KubernetesMetadataResponse, Map<String, dynamic>>(kubernetesMetadata, (value) => value.toMap()),
      'kubernetesResource': pulumi.Input.mapInputValue<KubernetesResourceResponse, Map<String, dynamic>>(kubernetesResource, (value) => value.toMap()),
      'multiCloudCluster': pulumi.Input.mapInputValue<MultiCloudClusterResponse, Map<String, dynamic>>(multiCloudCluster, (value) => value.toMap()),
      'onPremCluster': pulumi.Input.mapInputValue<OnPremClusterResponse, Map<String, dynamic>>(onPremCluster, (value) => value.toMap()),
    };
  }

  factory MembershipEndpointResponse.fromMap(Map<String, dynamic> map) {
    return MembershipEndpointResponse(
      applianceCluster: pulumi.Input.fromValue(ApplianceClusterResponse.fromMap((map['applianceCluster']! as Map).cast<String, dynamic>())),
      edgeCluster: pulumi.Input.fromValue(EdgeClusterResponse.fromMap((map['edgeCluster']! as Map).cast<String, dynamic>())),
      gkeCluster: pulumi.Input.fromValue(GkeClusterResponse.fromMap((map['gkeCluster']! as Map).cast<String, dynamic>())),
      googleManaged: pulumi.Input.fromValue(map['googleManaged'] as bool),
      kubernetesMetadata: pulumi.Input.fromValue(KubernetesMetadataResponse.fromMap((map['kubernetesMetadata']! as Map).cast<String, dynamic>())),
      kubernetesResource: pulumi.Input.fromValue(KubernetesResourceResponse.fromMap((map['kubernetesResource']! as Map).cast<String, dynamic>())),
      multiCloudCluster: pulumi.Input.fromValue(MultiCloudClusterResponse.fromMap((map['multiCloudCluster']! as Map).cast<String, dynamic>())),
      onPremCluster: pulumi.Input.fromValue(OnPremClusterResponse.fromMap((map['onPremCluster']! as Map).cast<String, dynamic>())),
    );
  }
}

