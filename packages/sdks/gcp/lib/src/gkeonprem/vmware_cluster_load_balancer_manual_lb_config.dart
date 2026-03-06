// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareClusterLoadBalancerManualLbConfig {
  /// NodePort for control plane service. The Kubernetes API server in the admin
  /// cluster is implemented as a Service of type NodePort (ex. 30968).
  final pulumi.Input<int>? controlPlaneNodePort;
  /// NodePort for ingress service's http. The ingress service in the admin
  /// cluster is implemented as a Service of type NodePort (ex. 32527).
  final pulumi.Input<int>? ingressHttpNodePort;
  /// NodePort for ingress service's https. The ingress service in the admin
  /// cluster is implemented as a Service of type NodePort (ex. 30139).
  final pulumi.Input<int>? ingressHttpsNodePort;
  /// NodePort for konnectivity server service running as a sidecar in each
  /// kube-apiserver pod (ex. 30564).
  final pulumi.Input<int>? konnectivityServerNodePort;

  /// Creates a new [VMwareClusterLoadBalancerManualLbConfig].
  /// [controlPlaneNodePort] NodePort for control plane service. The Kubernetes API server in the admin
  /// [ingressHttpNodePort] NodePort for ingress service's http. The ingress service in the admin
  /// [ingressHttpsNodePort] NodePort for ingress service's https. The ingress service in the admin
  /// [konnectivityServerNodePort] NodePort for konnectivity server service running as a sidecar in each
  const VMwareClusterLoadBalancerManualLbConfig({
    this.controlPlaneNodePort,
    this.ingressHttpNodePort,
    this.ingressHttpsNodePort,
    this.konnectivityServerNodePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneNodePort': ?controlPlaneNodePort,
      'ingressHttpNodePort': ?ingressHttpNodePort,
      'ingressHttpsNodePort': ?ingressHttpsNodePort,
      'konnectivityServerNodePort': ?konnectivityServerNodePort,
    };
  }

  factory VMwareClusterLoadBalancerManualLbConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterLoadBalancerManualLbConfig(
      controlPlaneNodePort: (() { final guardedValue = map['controlPlaneNodePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ingressHttpNodePort: (() { final guardedValue = map['ingressHttpNodePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ingressHttpsNodePort: (() { final guardedValue = map['ingressHttpsNodePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      konnectivityServerNodePort: (() { final guardedValue = map['konnectivityServerNodePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

