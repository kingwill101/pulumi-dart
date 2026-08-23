// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
class MeshCertificatesResponse {
  /// enable_certificates controls issuance of workload mTLS certificates. If set, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster, which can then be configured by creating a WorkloadCertificateConfig Custom Resource. Requires Workload Identity (workload_pool must be non-empty).
  final pulumi.Input<bool> enableCertificates;

  /// Creates a new [MeshCertificatesResponse].
  /// [enableCertificates] enable_certificates controls issuance of workload mTLS certificates. If set, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster, which can then be configured by creating a WorkloadCertificateConfig Custom Resource. Requires Workload Identity (workload_pool must be non-empty).
  const MeshCertificatesResponse({
    required this.enableCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCertificates': enableCertificates,
    };
  }

  factory MeshCertificatesResponse.fromMap(Map<String, dynamic> map) {
    return MeshCertificatesResponse(
      enableCertificates: pulumi.Input.fromValue(map['enableCertificates'] as bool),
    );
  }
}
