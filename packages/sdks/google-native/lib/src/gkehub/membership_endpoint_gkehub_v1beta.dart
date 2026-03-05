// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_cluster_gkehub_v1beta.dart';
import 'edge_cluster_gkehub_v1beta.dart';
import 'gke_cluster_gkehub_v1beta.dart';
import 'kubernetes_resource_gkehub_v1beta.dart';
import 'multi_cloud_cluster_gkehub_v1beta.dart';
import 'on_prem_cluster_gkehub_v1beta.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpointGkehubV1beta {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final pulumi.Input<ApplianceClusterGkehubV1beta>? applianceCluster;
  /// Optional. Specific information for a Google Edge cluster.
  final pulumi.Input<EdgeClusterGkehubV1beta>? edgeCluster;
  /// Optional. Specific information for a GKE-on-GCP cluster.
  final pulumi.Input<GkeClusterGkehubV1beta>? gkeCluster;
  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final pulumi.Input<KubernetesResourceGkehubV1beta>? kubernetesResource;
  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final pulumi.Input<MultiCloudClusterGkehubV1beta>? multiCloudCluster;
  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final pulumi.Input<OnPremClusterGkehubV1beta>? onPremCluster;

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
      'applianceCluster': ?pulumi.Input.mapOptionalInputValue<ApplianceClusterGkehubV1beta, Map<String, dynamic>>(applianceCluster, (value) => value.toMap()),
      'edgeCluster': ?pulumi.Input.mapOptionalInputValue<EdgeClusterGkehubV1beta, Map<String, dynamic>>(edgeCluster, (value) => value.toMap()),
      'gkeCluster': ?pulumi.Input.mapOptionalInputValue<GkeClusterGkehubV1beta, Map<String, dynamic>>(gkeCluster, (value) => value.toMap()),
      'kubernetesResource': ?pulumi.Input.mapOptionalInputValue<KubernetesResourceGkehubV1beta, Map<String, dynamic>>(kubernetesResource, (value) => value.toMap()),
      'multiCloudCluster': ?pulumi.Input.mapOptionalInputValue<MultiCloudClusterGkehubV1beta, Map<String, dynamic>>(multiCloudCluster, (value) => value.toMap()),
      'onPremCluster': ?pulumi.Input.mapOptionalInputValue<OnPremClusterGkehubV1beta, Map<String, dynamic>>(onPremCluster, (value) => value.toMap()),
    };
  }

  factory MembershipEndpointGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return MembershipEndpointGkehubV1beta(
      applianceCluster: (() { final guardedValue = map['applianceCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplianceClusterGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      edgeCluster: (() { final guardedValue = map['edgeCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EdgeClusterGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gkeCluster: (() { final guardedValue = map['gkeCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GkeClusterGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesResource: (() { final guardedValue = map['kubernetesResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesResourceGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multiCloudCluster: (() { final guardedValue = map['multiCloudCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiCloudClusterGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onPremCluster: (() { final guardedValue = map['onPremCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OnPremClusterGkehubV1beta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

