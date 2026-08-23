// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMeshCertificate {
  /// When enabled the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster.
  final pulumi.Input<bool> enableCertificates;

  /// Creates a new [GetClusterMeshCertificate].
  /// [enableCertificates] When enabled the GKE Workload Identity Certificates controller and node agent will be deployed in the cluster.
  const GetClusterMeshCertificate({
    required this.enableCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCertificates': enableCertificates,
    };
  }

  factory GetClusterMeshCertificate.fromMap(Map<String, dynamic> map) {
    return GetClusterMeshCertificate(
      enableCertificates: pulumi.Input.fromValue(map['enableCertificates'] as bool),
    );
  }
}
