// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for issuance of mTLS keys and certificates to Kubernetes pods.
class MeshCertificates {
  /// enable_certificates controls issuance of workload mTLS certificates. If set, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster, which can then be configured by creating a WorkloadCertificateConfig Custom Resource. Requires Workload Identity (workload_pool must be non-empty).
  final pulumi.Input<bool>? enableCertificates;

  /// Creates a new [MeshCertificates].
  /// [enableCertificates] enable_certificates controls issuance of workload mTLS certificates. If set, the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster, which can then be configured by creating a WorkloadCertificateConfig Custom Resource. Requires Workload Identity (workload_pool must be non-empty).
  MeshCertificates({
    this.enableCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCertificates': ?enableCertificates,
    };
  }

  factory MeshCertificates.fromMap(Map<String, dynamic> map) {
    return MeshCertificates(
      enableCertificates: (() { final guardedValue = map['enableCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

