// ignore_for_file: unused_element, unnecessary_cast

import 'appliance_cluster.dart';
import 'edge_cluster.dart';
import 'gke_cluster.dart';
import 'kubernetes_resource.dart';
import 'multi_cloud_cluster.dart';
import 'on_prem_cluster.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpoint {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final ApplianceCluster? applianceCluster;
  /// Optional. Specific information for a Google Edge cluster.
  final EdgeCluster? edgeCluster;
  /// Optional. Specific information for a GKE-on-GCP cluster.
  final GkeCluster? gkeCluster;
  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final KubernetesResource? kubernetesResource;
  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final MultiCloudCluster? multiCloudCluster;
  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final OnPremCluster? onPremCluster;

  /// Creates a new [MembershipEndpoint].
  /// [applianceCluster] Optional. Specific information for a GDC Edge Appliance cluster.
  /// [edgeCluster] Optional. Specific information for a Google Edge cluster.
  /// [gkeCluster] Optional. Specific information for a GKE-on-GCP cluster.
  /// [kubernetesResource] Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  /// [multiCloudCluster] Optional. Specific information for a GKE Multi-Cloud cluster.
  /// [onPremCluster] Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  MembershipEndpoint({
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

  factory MembershipEndpoint.fromMap(Map<String, dynamic> map) {
    return MembershipEndpoint(
      applianceCluster: map['applianceCluster'] == null ? null : ApplianceCluster.fromMap((map['applianceCluster'] as Map).cast<String, dynamic>()),
      edgeCluster: map['edgeCluster'] == null ? null : EdgeCluster.fromMap((map['edgeCluster'] as Map).cast<String, dynamic>()),
      gkeCluster: map['gkeCluster'] == null ? null : GkeCluster.fromMap((map['gkeCluster'] as Map).cast<String, dynamic>()),
      kubernetesResource: map['kubernetesResource'] == null ? null : KubernetesResource.fromMap((map['kubernetesResource'] as Map).cast<String, dynamic>()),
      multiCloudCluster: map['multiCloudCluster'] == null ? null : MultiCloudCluster.fromMap((map['multiCloudCluster'] as Map).cast<String, dynamic>()),
      onPremCluster: map['onPremCluster'] == null ? null : OnPremCluster.fromMap((map['onPremCluster'] as Map).cast<String, dynamic>()),
    );
  }
}

