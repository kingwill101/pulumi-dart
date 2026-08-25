// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetGke {
  /// Information specifying a GKE Cluster. Format is `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}.
  final pulumi.Input<String?>? cluster;
  /// Optional. If set, the cluster will be accessed using the DNS endpoint. Note that both `dnsEndpoint` and `internalIp` cannot be set to true.
  final pulumi.Input<bool?>? dnsEndpoint;
  /// Optional. If true, `cluster` is accessed using the private IP address of the control plane endpoint. Otherwise, the default IP address of the control plane endpoint is used. The default IP address is the private IP address for clusters with private control-plane endpoints and the public IP address otherwise. Only specify this option when `cluster` is a [private GKE cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept).
  final pulumi.Input<bool?>? internalIp;
  /// Optional. If set, used to configure a [proxy](https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/#proxy) to the Kubernetes server.
  final pulumi.Input<String?>? proxyUrl;

  /// Creates a new [TargetGke].
  /// [cluster] Information specifying a GKE Cluster. Format is `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}.
  /// [dnsEndpoint] Optional. If set, the cluster will be accessed using the DNS endpoint. Note that both `dnsEndpoint` and `internalIp` cannot be set to true.
  /// [internalIp] Optional. If true, `cluster` is accessed using the private IP address of the control plane endpoint. Otherwise, the default IP address of the control plane endpoint is used. The default IP address is the private IP address for clusters with private control-plane endpoints and the public IP address otherwise. Only specify this option when `cluster` is a [private GKE cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept).
  /// [proxyUrl] Optional. If set, used to configure a [proxy](https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/#proxy) to the Kubernetes server.
  const TargetGke({
    this.cluster,
    this.dnsEndpoint,
    this.internalIp,
    this.proxyUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'dnsEndpoint': ?dnsEndpoint,
      'internalIp': ?internalIp,
      'proxyUrl': ?proxyUrl,
    };
  }

  factory TargetGke.fromMap(Map<String, dynamic> map) {
    return TargetGke(
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsEndpoint: (() { final guardedValue = map['dnsEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      internalIp: (() { final guardedValue = map['internalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      proxyUrl: (() { final guardedValue = map['proxyUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
