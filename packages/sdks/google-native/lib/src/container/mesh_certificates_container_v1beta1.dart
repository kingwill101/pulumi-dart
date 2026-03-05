// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
class MeshCertificatesContainerV1beta1 {
  /// enable_certificates controls issuance of workload mTLS certificates. If set, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster, which can then be configured by creating a WorkloadCertificateConfig Custom Resource. Requires Workload Identity (workload_pool must be non-empty).
  final pulumi.Input<bool>? enableCertificates;

  /// Creates a new [MeshCertificatesContainerV1beta1].
  /// [enableCertificates] enable_certificates controls issuance of workload mTLS certificates. If set, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster, which can then be configured by creating a WorkloadCertificateConfig Custom Resource. Requires Workload Identity (workload_pool must be non-empty).
  MeshCertificatesContainerV1beta1({
    this.enableCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCertificates': ?enableCertificates,
    };
  }

  factory MeshCertificatesContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MeshCertificatesContainerV1beta1(
      enableCertificates: (() { final guardedValue = map['enableCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

