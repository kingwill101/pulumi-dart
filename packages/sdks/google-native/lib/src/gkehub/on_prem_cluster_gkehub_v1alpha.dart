// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'on_prem_cluster_cluster_type_gkehub_v1alpha.dart';

/// OnPremCluster contains information specific to GKE On-Prem clusters.
class OnPremClusterGkehubV1alpha {
  /// Immutable. Whether the cluster is an admin cluster.
  final pulumi.Input<bool>? adminCluster;
  /// Immutable. The on prem cluster's type.
  final pulumi.Input<OnPremClusterClusterTypeGkehubV1alpha>? clusterType;
  /// Immutable. Self-link of the Google Cloud resource for the GKE On-Prem cluster. For example: //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/vmwareClusters/my-cluster //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/bareMetalClusters/my-cluster
  final pulumi.Input<String>? resourceLink;

  /// Creates a new [OnPremClusterGkehubV1alpha].
  /// [adminCluster] Immutable. Whether the cluster is an admin cluster.
  /// [clusterType] Immutable. The on prem cluster's type.
  /// [resourceLink] Immutable. Self-link of the Google Cloud resource for the GKE On-Prem cluster. For example: //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/vmwareClusters/my-cluster //gkeonprem.googleapis.com/projects/my-project/locations/us-west1-a/bareMetalClusters/my-cluster
  const OnPremClusterGkehubV1alpha({
    this.adminCluster,
    this.clusterType,
    this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminCluster': ?adminCluster,
      'clusterType': ?pulumi.Input.mapOptionalInputValue<OnPremClusterClusterTypeGkehubV1alpha, String>(clusterType, (value) => value.wireValue),
      'resourceLink': ?resourceLink,
    };
  }

  factory OnPremClusterGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return OnPremClusterGkehubV1alpha(
      adminCluster: (() { final guardedValue = map['adminCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OnPremClusterClusterTypeGkehubV1alpha.fromValue(guardedValue as String)); })(),
      resourceLink: (() { final guardedValue = map['resourceLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
