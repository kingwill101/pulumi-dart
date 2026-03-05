// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_cluster.dart';
import 'edge_cluster.dart';
import 'gke_cluster.dart';
import 'kubernetes_resource.dart';
import 'multi_cloud_cluster.dart';
import 'on_prem_cluster.dart';

/// MembershipEndpoint contains information needed to contact a Kubernetes API, endpoint and any additional Kubernetes metadata.
class MembershipEndpoint {
  /// Optional. Specific information for a GDC Edge Appliance cluster.
  final pulumi.Input<ApplianceCluster>? applianceCluster;
  /// Optional. Specific information for a Google Edge cluster.
  final pulumi.Input<EdgeCluster>? edgeCluster;
  /// Optional. Specific information for a GKE-on-GCP cluster.
  final pulumi.Input<GkeCluster>? gkeCluster;
  /// Optional. The in-cluster Kubernetes Resources that should be applied for a correctly registered cluster, in the steady state. These resources: * Ensure that the cluster is exclusively registered to one and only one Hub Membership. * Propagate Workload Pool Information available in the Membership Authority field. * Ensure proper initial configuration of default Hub Features.
  final pulumi.Input<KubernetesResource>? kubernetesResource;
  /// Optional. Specific information for a GKE Multi-Cloud cluster.
  final pulumi.Input<MultiCloudCluster>? multiCloudCluster;
  /// Optional. Specific information for a GKE On-Prem cluster. An onprem user-cluster who has no resourceLink is not allowed to use this field, it should have a nil "type" instead.
  final pulumi.Input<OnPremCluster>? onPremCluster;

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
      'applianceCluster': ?pulumi.Input.mapOptionalInputValue<ApplianceCluster, Map<String, dynamic>>(applianceCluster, (value) => value.toMap()),
      'edgeCluster': ?pulumi.Input.mapOptionalInputValue<EdgeCluster, Map<String, dynamic>>(edgeCluster, (value) => value.toMap()),
      'gkeCluster': ?pulumi.Input.mapOptionalInputValue<GkeCluster, Map<String, dynamic>>(gkeCluster, (value) => value.toMap()),
      'kubernetesResource': ?pulumi.Input.mapOptionalInputValue<KubernetesResource, Map<String, dynamic>>(kubernetesResource, (value) => value.toMap()),
      'multiCloudCluster': ?pulumi.Input.mapOptionalInputValue<MultiCloudCluster, Map<String, dynamic>>(multiCloudCluster, (value) => value.toMap()),
      'onPremCluster': ?pulumi.Input.mapOptionalInputValue<OnPremCluster, Map<String, dynamic>>(onPremCluster, (value) => value.toMap()),
    };
  }

  factory MembershipEndpoint.fromMap(Map<String, dynamic> map) {
    return MembershipEndpoint(
      applianceCluster: (() { final guardedValue = map['applianceCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplianceCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      edgeCluster: (() { final guardedValue = map['edgeCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EdgeCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gkeCluster: (() { final guardedValue = map['gkeCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GkeCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesResource: (() { final guardedValue = map['kubernetesResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubernetesResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multiCloudCluster: (() { final guardedValue = map['multiCloudCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiCloudCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onPremCluster: (() { final guardedValue = map['onPremCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OnPremCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

