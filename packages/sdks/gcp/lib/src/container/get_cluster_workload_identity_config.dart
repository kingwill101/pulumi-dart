// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterWorkloadIdentityConfig {
  /// The workload pool to attach all Kubernetes service accounts to.
  final pulumi.Input<String> workloadPool;

  /// Creates a new [GetClusterWorkloadIdentityConfig].
  /// [workloadPool] The workload pool to attach all Kubernetes service accounts to.
  GetClusterWorkloadIdentityConfig({required this.workloadPool});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'workloadPool': workloadPool};
  }

  factory GetClusterWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterWorkloadIdentityConfig(
      workloadPool: pulumi.Input.fromValue(map['workloadPool'] as String),
    );
  }
}
