// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetAssociatedEntityGkeCluster {
  /// Optional. Information specifying a GKE Cluster. Format is `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`.
  final pulumi.Input<String>? cluster;
  /// Optional. If true, `cluster` is accessed using the private IP address of the control plane endpoint. Otherwise, the default IP address of the control plane endpoint is used. The default IP address is the private IP address for clusters with private control-plane endpoints and the public IP address otherwise. Only specify this option when `cluster` is a [private GKE cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept).
  final pulumi.Input<bool>? internalIp;
  /// Optional. If set, used to configure a [proxy](https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/#proxy) to the Kubernetes server.
  final pulumi.Input<String>? proxyUrl;

  /// Creates a new [TargetAssociatedEntityGkeCluster].
  /// [cluster] Optional. Information specifying a GKE Cluster. Format is `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`.
  /// [internalIp] Optional. If true, `cluster` is accessed using the private IP address of the control plane endpoint. Otherwise, the default IP address of the control plane endpoint is used. The default IP address is the private IP address for clusters with private control-plane endpoints and the public IP address otherwise. Only specify this option when `cluster` is a [private GKE cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept).
  /// [proxyUrl] Optional. If set, used to configure a [proxy](https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/#proxy) to the Kubernetes server.
  TargetAssociatedEntityGkeCluster({
    this.cluster,
    this.internalIp,
    this.proxyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'internalIp': ?internalIp,
      'proxyUrl': ?proxyUrl,
    };
  }

  factory TargetAssociatedEntityGkeCluster.fromMap(Map<String, dynamic> map) {
    return TargetAssociatedEntityGkeCluster(
      cluster: map['cluster'] == null ? null : (map['cluster']! as String).input(),
      internalIp: map['internalIp'] == null ? null : (map['internalIp']! as bool).input(),
      proxyUrl: map['proxyUrl'] == null ? null : (map['proxyUrl']! as String).input(),
    );
  }
}

