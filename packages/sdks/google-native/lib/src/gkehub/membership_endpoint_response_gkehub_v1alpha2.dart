// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_cluster_response_gkehub_v1alpha2.dart';
import 'edge_cluster_response_gkehub_v1alpha2.dart';
import 'gke_cluster_response_gkehub_v1alpha2.dart';
import 'kubernetes_metadata_response_gkehub_v1alpha2.dart';
import 'kubernetes_resource_response_gkehub_v1alpha2.dart';
import 'multi_cloud_cluster_response_gkehub_v1alpha2.dart';
import 'on_prem_cluster_response_gkehub_v1alpha2.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpointResponseGkehubV1alpha2 {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final pulumi.Input<ApplianceClusterResponseGkehubV1alpha2> applianceCluster;

  /// Optional. Specific information for a Google Edge cluster.
  final pulumi.Input<EdgeClusterResponseGkehubV1alpha2> edgeCluster;

  /// Optional. Specific information for a GKE-on-GCP cluster.
  final pulumi.Input<GkeClusterResponseGkehubV1alpha2> gkeCluster;

  /// Useful Kubernetes-specific metadata.
  final pulumi.Input<KubernetesMetadataResponseGkehubV1alpha2>
  kubernetesMetadata;

  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final pulumi.Input<KubernetesResourceResponseGkehubV1alpha2>
  kubernetesResource;

  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final pulumi.Input<MultiCloudClusterResponseGkehubV1alpha2> multiCloudCluster;

  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final pulumi.Input<OnPremClusterResponseGkehubV1alpha2> onPremCluster;

  /// Creates a new [MembershipEndpointResponseGkehubV1alpha2].
  /// [applianceCluster] Optional. Specific information for a GDC Edge Appliance cluster.
  /// [edgeCluster] Optional. Specific information for a Google Edge cluster.
  /// [gkeCluster] Optional. Specific information for a GKE-on-GCP cluster.
  /// [kubernetesMetadata] Useful Kubernetes-specific metadata.
  /// [kubernetesResource] Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  /// [multiCloudCluster] Optional. Specific information for a GKE Multi-Cloud cluster.
  /// [onPremCluster] Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  MembershipEndpointResponseGkehubV1alpha2({
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
      'applianceCluster':
          pulumi.Input.mapInputValue<
            ApplianceClusterResponseGkehubV1alpha2,
            Map<String, dynamic>
          >(applianceCluster, (value) => value.toMap()),
      'edgeCluster':
          pulumi.Input.mapInputValue<
            EdgeClusterResponseGkehubV1alpha2,
            Map<String, dynamic>
          >(edgeCluster, (value) => value.toMap()),
      'gkeCluster':
          pulumi.Input.mapInputValue<
            GkeClusterResponseGkehubV1alpha2,
            Map<String, dynamic>
          >(gkeCluster, (value) => value.toMap()),
      'kubernetesMetadata':
          pulumi.Input.mapInputValue<
            KubernetesMetadataResponseGkehubV1alpha2,
            Map<String, dynamic>
          >(kubernetesMetadata, (value) => value.toMap()),
      'kubernetesResource':
          pulumi.Input.mapInputValue<
            KubernetesResourceResponseGkehubV1alpha2,
            Map<String, dynamic>
          >(kubernetesResource, (value) => value.toMap()),
      'multiCloudCluster':
          pulumi.Input.mapInputValue<
            MultiCloudClusterResponseGkehubV1alpha2,
            Map<String, dynamic>
          >(multiCloudCluster, (value) => value.toMap()),
      'onPremCluster':
          pulumi.Input.mapInputValue<
            OnPremClusterResponseGkehubV1alpha2,
            Map<String, dynamic>
          >(onPremCluster, (value) => value.toMap()),
    };
  }

  factory MembershipEndpointResponseGkehubV1alpha2.fromMap(
    Map<String, dynamic> map,
  ) {
    return MembershipEndpointResponseGkehubV1alpha2(
      applianceCluster: pulumi.Input.fromValue(
        ApplianceClusterResponseGkehubV1alpha2.fromMap(
          (map['applianceCluster']! as Map).cast<String, dynamic>(),
        ),
      ),
      edgeCluster: pulumi.Input.fromValue(
        EdgeClusterResponseGkehubV1alpha2.fromMap(
          (map['edgeCluster']! as Map).cast<String, dynamic>(),
        ),
      ),
      gkeCluster: pulumi.Input.fromValue(
        GkeClusterResponseGkehubV1alpha2.fromMap(
          (map['gkeCluster']! as Map).cast<String, dynamic>(),
        ),
      ),
      kubernetesMetadata: pulumi.Input.fromValue(
        KubernetesMetadataResponseGkehubV1alpha2.fromMap(
          (map['kubernetesMetadata']! as Map).cast<String, dynamic>(),
        ),
      ),
      kubernetesResource: pulumi.Input.fromValue(
        KubernetesResourceResponseGkehubV1alpha2.fromMap(
          (map['kubernetesResource']! as Map).cast<String, dynamic>(),
        ),
      ),
      multiCloudCluster: pulumi.Input.fromValue(
        MultiCloudClusterResponseGkehubV1alpha2.fromMap(
          (map['multiCloudCluster']! as Map).cast<String, dynamic>(),
        ),
      ),
      onPremCluster: pulumi.Input.fromValue(
        OnPremClusterResponseGkehubV1alpha2.fromMap(
          (map['onPremCluster']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
