// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents configuration parameters for an already existing manual load balancer. Given the nature of manual load balancers it is expected that said load balancer will be fully managed by users. IMPORTANT: Please note that the Anthos On-Prem API will not generate or update ManualLB configurations it can only bind a pre-existing configuration to a new VMware user cluster.
class VmwareManualLbConfigResponse {
  /// NodePort for control plane service. The Kubernetes API server in the admin cluster is implemented as a Service of type NodePort (ex. 30968).
  final pulumi.Input<int> controlPlaneNodePort;

  /// NodePort for ingress service's http. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 32527).
  final pulumi.Input<int> ingressHttpNodePort;

  /// NodePort for ingress service's https. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 30139).
  final pulumi.Input<int> ingressHttpsNodePort;

  /// NodePort for konnectivity server service running as a sidecar in each kube-apiserver pod (ex. 30564).
  final pulumi.Input<int> konnectivityServerNodePort;

  /// Creates a new [VmwareManualLbConfigResponse].
  /// [controlPlaneNodePort] NodePort for control plane service. The Kubernetes API server in the admin cluster is implemented as a Service of type NodePort (ex. 30968).
  /// [ingressHttpNodePort] NodePort for ingress service's http. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 32527).
  /// [ingressHttpsNodePort] NodePort for ingress service's https. The ingress service in the admin cluster is implemented as a Service of type NodePort (ex. 30139).
  /// [konnectivityServerNodePort] NodePort for konnectivity server service running as a sidecar in each kube-apiserver pod (ex. 30564).
  VmwareManualLbConfigResponse({
    required this.controlPlaneNodePort,
    required this.ingressHttpNodePort,
    required this.ingressHttpsNodePort,
    required this.konnectivityServerNodePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneNodePort': controlPlaneNodePort,
      'ingressHttpNodePort': ingressHttpNodePort,
      'ingressHttpsNodePort': ingressHttpsNodePort,
      'konnectivityServerNodePort': konnectivityServerNodePort,
    };
  }

  factory VmwareManualLbConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareManualLbConfigResponse(
      controlPlaneNodePort: pulumi.Input.fromValue(
        map['controlPlaneNodePort'] as int,
      ),
      ingressHttpNodePort: pulumi.Input.fromValue(
        map['ingressHttpNodePort'] as int,
      ),
      ingressHttpsNodePort: pulumi.Input.fromValue(
        map['ingressHttpsNodePort'] as int,
      ),
      konnectivityServerNodePort: pulumi.Input.fromValue(
        map['konnectivityServerNodePort'] as int,
      ),
    );
  }
}
