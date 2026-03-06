// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configuration parameters for an already existing manual load balancer. Given the nature of manual load balancers it is expected that said load balancer will be fully managed by users. IMPORTANT: Please note that the Anthos On-Prem API will not generate or update ManualLB configurations it can only bind a pre-existing configuration to a new VMware user cluster.
class VmwareManualLbConfig {
  /// NodePort for control plane service. The Kubernetes API server in the admin cluster is implemented as a Service of type NodePort (ex. 30968).
  final pulumi.Input<int>? controlPlaneNodePort;
  /// NodePort for ingress service's http. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 32527).
  final pulumi.Input<int>? ingressHttpNodePort;
  /// NodePort for ingress service's https. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 30139).
  final pulumi.Input<int>? ingressHttpsNodePort;
  /// NodePort for konnectivity server service running as a sidecar in each kube-apiserver pod (ex. 30564).
  final pulumi.Input<int>? konnectivityServerNodePort;

  /// Creates a new [VmwareManualLbConfig].
  /// [controlPlaneNodePort] NodePort for control plane service. The Kubernetes API server in the admin cluster is implemented as a Service of type NodePort (ex. 30968).
  /// [ingressHttpNodePort] NodePort for ingress service's http. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 32527).
  /// [ingressHttpsNodePort] NodePort for ingress service's https. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 30139).
  /// [konnectivityServerNodePort] NodePort for konnectivity server service running as a sidecar in each kube-apiserver pod (ex. 30564).
  const VmwareManualLbConfig({
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

  factory VmwareManualLbConfig.fromMap(Map<String, dynamic> map) {
    return VmwareManualLbConfig(
      controlPlaneNodePort: (() { final guardedValue = map['controlPlaneNodePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ingressHttpNodePort: (() { final guardedValue = map['ingressHttpNodePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ingressHttpsNodePort: (() { final guardedValue = map['ingressHttpsNodePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      konnectivityServerNodePort: (() { final guardedValue = map['konnectivityServerNodePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

