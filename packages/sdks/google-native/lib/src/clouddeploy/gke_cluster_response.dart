// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information specifying a GKE Cluster.
class GkeClusterResponse {
  /// Information specifying a GKE Cluster. Format is `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`.
  final pulumi.Input<String> cluster;
  /// Optional. If true, `cluster` is accessed using the private IP address of the control plane endpoint. Otherwise, the default IP address of the control plane endpoint is used. The default IP address is the private IP address for clusters with private control-plane endpoints and the public IP address otherwise. Only specify this option when `cluster` is a [private GKE cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept).
  final pulumi.Input<bool> internalIp;

  /// Creates a new [GkeClusterResponse].
  /// [cluster] Information specifying a GKE Cluster. Format is `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`.
  /// [internalIp] Optional. If true, `cluster` is accessed using the private IP address of the control plane endpoint. Otherwise, the default IP address of the control plane endpoint is used. The default IP address is the private IP address for clusters with private control-plane endpoints and the public IP address otherwise. Only specify this option when `cluster` is a [private GKE cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept).
  GkeClusterResponse({
    required this.cluster,
    required this.internalIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'internalIp': internalIp,
    };
  }

  factory GkeClusterResponse.fromMap(Map<String, dynamic> map) {
    return GkeClusterResponse(
      cluster: (map['cluster'] as String).input(),
      internalIp: (map['internalIp'] as bool).input(),
    );
  }
}

