// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterWorkloadIdentityConfig {
  /// The workload pool to attach all Kubernetes service accounts to.
  final pulumi.Input<String>? workloadPool;

  /// Creates a new [ClusterWorkloadIdentityConfig].
  /// [workloadPool] The workload pool to attach all Kubernetes service accounts to.
  const ClusterWorkloadIdentityConfig({
    this.workloadPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workloadPool': ?workloadPool,
    };
  }

  factory ClusterWorkloadIdentityConfig.fromMap(Map<String, dynamic> map) {
    return ClusterWorkloadIdentityConfig(
      workloadPool: (() { final guardedValue = map['workloadPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
