// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMeshCertificates {
  /// Controls the issuance of workload mTLS certificates. It is enabled by default. Workload Identity is required, see workload_config.
  final pulumi.Input<bool> enableCertificates;

  /// Creates a new [ClusterMeshCertificates].
  /// [enableCertificates] Controls the issuance of workload mTLS certificates. It is enabled by default. Workload Identity is required, see workload_config.
  ClusterMeshCertificates({
    required this.enableCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCertificates': enableCertificates,
    };
  }

  factory ClusterMeshCertificates.fromMap(Map<String, dynamic> map) {
    return ClusterMeshCertificates(
      enableCertificates: pulumi.Input.fromValue(map['enableCertificates'] as bool),
    );
  }
}

